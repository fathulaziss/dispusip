// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dispusip/app/modules/api_log/models/api_log_model.dart';
import 'package:dispusip/app_config.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiService {
  Dio? _dio;

  static header() => {'Content-Type': 'application/json'};

  Future<ApiService> init() async {
    logSys('Api Service Initialized');
    _dio = Dio(BaseOptions(baseUrl: AppConfig.baseUrl, headers: header()));
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
            '[RESPONSE_STATUS_CODE] : ${response.statusCode}\n[RESPONSE_DATA] : ${response.data}',
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

  Future<dynamic> request({
    required String url,
    required Method method,
    Map<String, dynamic>? params,
  }) async {
    logSys('params : $params');
    Response response;

    if (_dio == null) {
      _dio = Dio(BaseOptions(baseUrl: AppConfig.baseUrl, headers: header()));
      initInterceptors();
    }

    try {
      if (method == Method.POST) {
        response = await _dio!.post(url, data: params);
      } else if (method == Method.DELETE) {
        response = await _dio!.delete(url);
      } else if (method == Method.PATCH) {
        response = await _dio!.patch(url);
      } else {
        response = await _dio!.get(url, queryParameters: params);
      }

      if (response.statusCode == 200) {
        return checkResponse(
          url: url,
          params: params ?? {},
          response: response.data,
          method: method,
        );
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

  Future<dynamic> checkResponse({
    required String url,
    required Map<String, dynamic> params,
    required dynamic response,
    required Method method,
  }) async {
    await ApiLogger().log(
      data: ApiLogModel(
        url: '${AppConfig.baseUrl}$url',
        payload: params.toString(),
        response: response.toString(),
        method: method.toString(),
      ),
    );

    if (response['response_code'] == 200) {
      return response['response_data'];
    }

    showToast(message: 'Gagal Request');
    throw Exception('Gagal Request');
  }
}
