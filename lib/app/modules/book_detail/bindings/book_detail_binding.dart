import 'package:dispusip/app/modules/book_detail/controllers/book_detail_controller.dart';
import 'package:get/get.dart';

class BookDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookDetailController>(() => BookDetailController());
  }
}
