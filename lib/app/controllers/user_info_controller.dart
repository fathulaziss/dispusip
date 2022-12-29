import 'package:dispusip/app/models/notification_model.dart';
import 'package:dispusip/app/models/user_info_model.dart';
import 'package:dispusip/constants/constants.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_storage.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class UserInfoController extends GetxController {
  Rx<UserInfoModel> dataUser = UserInfoModel().obs;

  RxString statusUser = ''.obs;

  RxList<NotificationModel> listNotification = <NotificationModel>[].obs;
  RxInt totalNotificationUnread = 0.obs;

  void getDataUser() {
    getStatusUser();
    getProfile();
    getNotification();
  }

  Future<void> getProfile() async {
    try {
      final token = await AppStorage.read(key: CACHE_ACCESS_TOKEN);
      if (token.isNotEmpty) {
        final r =
            await ApiService().request(url: 'profile', method: Method.GET);
        dataUser.value = UserInfoModel.fromJson(r);
      }
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> getNotification() async {
    try {
      final token = await AppStorage.read(key: CACHE_ACCESS_TOKEN);
      if (token.isNotEmpty) {
        final r = await ApiService().request(url: 'notif', method: Method.GET);

        final List data = r;

        listNotification(
          RxList.from(data.map((e) => NotificationModel.fromJson(e))),
        );

        listNotification.sort(
          (a, b) {
            final dataA =
                DateFormat('yyyy-MM-dd HH:mm:ss').parse(a.createdDate);
            final dataB =
                DateFormat('yyyy-MM-dd HH:mm:ss').parse(b.createdDate);
            return dataB.compareTo(dataA);
          },
        );

        totalNotificationUnread(0);

        for (final data in listNotification) {
          if (data.status == '1') {
            totalNotificationUnread(totalNotificationUnread.value + 1);
          }
        }
      }
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> getStatusUser() async {
    try {
      final data = await AppStorage.read(key: CHACHE_STATUS_USER);
      if (data.isNotEmpty) {
        statusUser(data);
      }
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> setStatusUser(String value) async {
    try {
      await AppStorage.write(key: CHACHE_STATUS_USER, value: value);
    } catch (e) {
      logSys(e.toString());
    }
  }
}
