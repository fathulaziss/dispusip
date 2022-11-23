import 'package:dispusip/app/modules/klik/controllers/klik_controller.dart';
import 'package:get/get.dart';

class KlikBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KlikController>(() => KlikController());
  }
}
