import 'package:dispusip/app/modules/book_category/controllers/book_category_controller.dart';
import 'package:get/get.dart';

class BookCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookCategoryController>(() => BookCategoryController());
  }
}
