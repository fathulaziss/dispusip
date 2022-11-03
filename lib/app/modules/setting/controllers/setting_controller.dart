import 'package:dispusip/app/modules/setting/models/setting_webview_model.dart';
import 'package:dispusip/constants/constants.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_storage.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  RxBool isActiveEmailNotification = false.obs;

  RxList<SettingWebviewModel> listSettingWebview = <SettingWebviewModel>[].obs;

  @override
  void onInit() {
    getData();
    getStatusEmailNotification();
    super.onInit();
  }

  Future<void> getData() async {
    try {
      final r = await ApiService().request(
        url: 'get_webview',
        method: Method.GET,
        isToken: false,
      );

      final List data = r[0];
      listSettingWebview(
        RxList.from(data.map((e) => SettingWebviewModel.fromJson(e))),
      );
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> getStatusEmailNotification() async {
    try {
      final data = await AppStorage.read(key: CHACHE_EMAIL_NOTIFICATION);
      if (data.isNotEmpty) {
        if (data == 'Email Notification is Enable') {
          isActiveEmailNotification(true);
        }

        if (data == 'Email Notification is Disable') {
          isActiveEmailNotification(false);
        }
      } else {
        isActiveEmailNotification(false);
      }
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> updateStatusEmailNotification() async {
    try {
      final r =
          await ApiService().request(url: 'auth/isemail', method: Method.GET);

      final String data = r[0];

      await AppStorage.write(key: CHACHE_EMAIL_NOTIFICATION, value: data);

      await getStatusEmailNotification();
    } catch (e) {
      logSys(e.toString());
    }
  }
}
