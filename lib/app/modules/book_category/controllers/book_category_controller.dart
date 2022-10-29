import 'package:dispusip/app/modules/book_category/models/book_category_data_model.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:get/get.dart';

class BookCategoryController extends GetxController {
  RxList<BookCategoryDataModel> listBookCategoryData =
      <BookCategoryDataModel>[].obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() {
    final args = Get.arguments;
    if (args != null) {
      getBookCategory(args['code']);
    }
  }

  Future<void> getBookCategory(String code) async {
    try {
      isLoading(true);

      final r = await ApiService()
          .request(url: 'book/category/$code', method: Method.GET);

      isLoading(false);

      final List data = r;

      listBookCategoryData(
        RxList.from(data.map((e) => BookCategoryDataModel.fromJson(e))),
      );
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
      // rethrow;
    }
  }
}
