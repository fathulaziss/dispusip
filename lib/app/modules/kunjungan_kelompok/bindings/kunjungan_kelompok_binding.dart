import 'package:dispusip/app/modules/kunjungan_kelompok/controllers/kunjungan_kelompok_controller.dart';
import 'package:get/get.dart';

class KunjunganKelompokBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KunjunganKelompokController>(
      () => KunjunganKelompokController(),
    );
  }
}
