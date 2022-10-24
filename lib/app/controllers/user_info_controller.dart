import 'package:dispusip/app/models/user_info_model.dart';
import 'package:dispusip/constants/constants.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_storage.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';

class UserInfoController extends GetxController {
  Rx<UserInfoModel> dataUser = UserInfoModel().obs;

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
}
