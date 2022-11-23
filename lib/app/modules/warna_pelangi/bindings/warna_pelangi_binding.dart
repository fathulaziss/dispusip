import 'package:dispusip/app/modules/warna_pelangi/controllers/warna_pelangi_controller.dart';
import 'package:get/get.dart';

class WarnaPelangiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WarnaPelangiController>(() => WarnaPelangiController());
  }
}
