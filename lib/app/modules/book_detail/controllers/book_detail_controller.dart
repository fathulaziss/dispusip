import 'package:dispusip/app/models/bok_detail_model.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';

class BookDetailController extends GetxController {
  Rx<BookDetailModel> data = BookDetailModel().obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() {
    final args = Get.arguments;
    if (args != null) {
      getBookDetail(args['id']);
    }
  }

  Future<void> getBookDetail(int id) async {
    try {
      isLoading(true);

      final r = await ApiService().request(
        url: 'book/detail/$id',
        method: Method.GET,
      );

      isLoading(false);

      data.value = BookDetailModel.fromJson(r);
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}
