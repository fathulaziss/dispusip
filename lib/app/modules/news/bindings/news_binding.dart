import 'package:dispusip/app/modules/news/controllers/news_controller.dart';
import 'package:get/get.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(() => NewsController());
  }
}
