import 'package:dispusip/app/modules/kunjungan/controllers/kunjungan_controller.dart';
import 'package:get/get.dart';

class KunjunganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KunjunganController>(() => KunjunganController());
  }
}
