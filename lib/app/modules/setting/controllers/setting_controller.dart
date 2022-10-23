import 'package:dispusip/app/modules/setting/models/setting_webview_model.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  RxBool isActiveEmailNotification = true.obs;

  RxList<SettingWebviewModel> listSettingWebview = <SettingWebviewModel>[].obs;

  @override
  void onInit() {
    getData();
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
}
