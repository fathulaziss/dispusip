import 'package:dispusip/app/models/history_model.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  RxInt tabbarIndex = 0.obs;

  Rx<HistoryModel> historyLoan = HistoryModel().obs;

  Rx<HistoryModel> historyReturn = HistoryModel().obs;

  RxBool isLoadingHistoryReturn = false.obs;
  RxBool isLoadingHistoryLoan = false.obs;

  @override
  void onInit() {
    getHistoryLoan();
    super.onInit();
  }

  Future<void> getHistoryLoan() async {
    try {
      isLoadingHistoryLoan(true);

      final r = await ApiService()
          .request(url: 'loan?status=Loan', method: Method.GET);

      isLoadingHistoryLoan(false);

      historyLoan(HistoryModel.fromJson(r));
    } catch (e) {
      isLoadingHistoryLoan(false);
      // logSys(e.toString());
      rethrow;
    }
  }

  Future<void> getHistoryReturn() async {
    try {
      isLoadingHistoryReturn(true);

      final r = await ApiService()
          .request(url: 'loan?status=Return', method: Method.GET);

      isLoadingHistoryReturn(false);

      historyReturn(HistoryModel.fromJson(r));
    } catch (e) {
      isLoadingHistoryReturn(false);
      rethrow;
    }
  }
}
