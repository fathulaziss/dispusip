import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  final cUserInfo = Get.find<UserInfoController>();

  RxBool isLoading = false.obs;

  Future<void> updateNotificationItem(String id) async {
    try {
      final params = {'id': id};

      await ApiService().request(
        url: 'notif/updatestatus',
        parameters: params,
        method: Method.POST,
      );

      await cUserInfo.getNotification();
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> updateNotificationAll() async {
    try {
      await ApiService()
          .request(url: 'notif/updateallstatus', method: Method.GET);

      await cUserInfo.getNotification();
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> deleteNotificationAll() async {
    try {
      await ApiService().request(url: 'notif/deletenotif', method: Method.GET);

      await cUserInfo.getNotification();
    } catch (e) {
      logSys(e.toString());
    }
  }
}
