// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dispusip/app/modules/api_log/models/api_log_model.dart';
import 'package:dispusip/constants/constants.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_storage.dart';
import 'package:dispusip/utils/app_utils.dart';

class HttpService {
  Dio? _dio;

  // static header() => {'Content-Type': 'application/json'};

  Future<HttpService> init() async {
    logSys('Http Service Initialized');
    _dio = Dio(
      BaseOptions(headers: {'Content-Type': 'application/json'}),
    );
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) {
          logSys(
            '[REQUEST_METHOD] : ${requestOptions.method}\n[URL] : ${requestOptions.baseUrl}\n[PATH] : ${requestOptions.path}'
            '\n[PARAMS_VALUES] : ${requestOptions.data}\n[QUERY_PARAMS_VALUES] : ${requestOptions.queryParameters}\n[HEADERS] : ${requestOptions.headers}',
          );
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          logSys(
            '[RESPONSE_STATUS_CODE] : ${response.statusCode}\n[RESPONSE_DATA] : ${response.data}\n',
          );
          return handler.next(response);
        },
        onError: (err, handler) {
          logSys('Error[${err.response?.statusCode}]');
          return handler.next(err);
        },
      ),
    );
  }

  static Future<Map<String, String>> getHeader({
    Map<String, String>? headers,
    required bool isToken,
  }) async {
    final header = <String, String>{'Content-Type': 'application/json'};
    final token = await AppStorage.read(key: CACHE_ACCESS_TOKEN);
    if (isToken) {
      header['Authorization'] = 'Bearer $token';
    }
    return header;
  }

  Future<dynamic> request({
    required String url,
    required Method method,
    Map<String, String>? headers,
    Map<String, dynamic>? parameters,
    bool isToken = true,
  }) async {
    Response response;

    final params = parameters ?? <String, dynamic>{};

    final header = await getHeader(headers: headers, isToken: isToken);

    if (_dio == null) {
      _dio = Dio(BaseOptions(headers: header));
      initInterceptors();
    }

    try {
      if (method == Method.POST) {
        response = await _dio!.post(url, data: parameters);
      } else if (method == Method.DELETE) {
        response = await _dio!.delete(url);
      } else if (method == Method.PATCH) {
        response = await _dio!.patch(url);
      } else {
        response = await _dio!.get(url, queryParameters: params);
      }

      if (response.statusCode == 200) {
        await ApiLogger().log(
          data: ApiLogModel(
            url: url,
            payload: params.toString(),
            response: response.toString(),
            method: method.toString(),
          ),
        );
        return response.data;
        // return checkResponse(
        //   url: url,
        //   params: params,
        //   response: response.data,
        //   method: method,
        // );
      } else if (response.statusCode == 401) {
        throw Exception('Unauthorized');
      } else if (response.statusCode == 500) {
        throw Exception('Server Error');
      } else {
        throw Exception("Something does wen't wrong");
      }
    } on SocketException catch (e) {
      logSys(e.toString());
      throw Exception('Not Internet Connection');
    } on FormatException catch (e) {
      logSys(e.toString());
      throw Exception('Bad response format');
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        final response = e.response;
        try {
          if (response != null && response.data != null) {
            final data = json.decode(response.data as String) as Map;

            throw Exception(data['message'] as String);
          }
        } catch (e) {
          throw Exception('Internal Error');
        }
      } else if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        throw Exception('Request timeout');
      } else if (e.error is SocketException) {
        throw Exception('No Internet Connection!');
      }
    } catch (e) {
      rethrow;
    }
  }

  // Future<dynamic> checkResponse({
  //   required String url,
  //   required Map<String, dynamic> params,
  //   required dynamic response,
  //   required Method method,
  // }) async {
  //   await ApiLogger().log(
  //     data: ApiLogModel(
  //       url: '${AppConfig.baseUrl}$url',
  //       payload: params.toString(),
  //       response: response.toString(),
  //       method: method.toString(),
  //     ),
  //   );

  //   if (response['response_code'] == 200) {
  //     return response['response_data'];
  //   }

  //   showToast(message: 'Gagal Request');
  //   throw Exception('Gagal Request');
  // }
}