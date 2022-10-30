import 'package:dispusip/app/models/notification_model.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxList<NotificationModel> listNotification = <NotificationModel>[
    NotificationModel(
      title: 'Notifikisi 1',
      desc: 'Kontent notifikasi, belum terbaca',
      time: '14:32',
    ),
    NotificationModel(
      title: 'Notifikisi 2',
      desc: 'Kontent notifikasi, sudah terbaca',
      time: '14:32',
      isRead: true,
    ),
  ].obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getNotification();
    super.onInit();
  }

  Future<void> getNotification() async {
    try {
      isLoading(true);

      await Future.delayed(const Duration(seconds: 3));

      isLoading(false);
    } catch (e) {
      logSys(e.toString());
    }
  }
}
