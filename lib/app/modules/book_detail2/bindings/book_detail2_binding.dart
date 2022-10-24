import 'package:dispusip/app/modules/book_detail2/controllers/book_detail2_controller.dart';
import 'package:get/get.dart';

class BookDetail2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookDetail2Controller>(() => BookDetail2Controller());
  }
}
