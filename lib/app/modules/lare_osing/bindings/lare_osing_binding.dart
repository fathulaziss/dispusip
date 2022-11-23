import 'package:dispusip/app/modules/lare_osing/controllers/lare_osing_controller.dart';
import 'package:get/get.dart';

class LareOsingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LareOsingController>(() => LareOsingController());
  }
}
