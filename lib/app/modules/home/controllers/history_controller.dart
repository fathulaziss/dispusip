import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  RxInt tabbarIndex = 0.obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getHistory();
    super.onInit();
  }

  Future<void> getHistory() async {
    try {
      isLoading(true);

      await ApiService().request(url: 'loan?status=Loan', method: Method.GET);

      isLoading(false);
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}
