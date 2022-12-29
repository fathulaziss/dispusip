import 'package:dispusip/app/modules/rest_area/controllers/rest_area_controller.dart';
import 'package:get/get.dart';

class RestAreaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestAreaController>(
      () => RestAreaController(),
    );
  }
}
