import 'package:dispusip/app/models/book_model.dart';
import 'package:get/get.dart';

class BookDetailController extends GetxController {
  Rx<BookModel> data = BookModel().obs;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}

  void initData() {
    final r = Get.arguments;
    if (r != null) {
      data(r['data']);
    }
  }
}
