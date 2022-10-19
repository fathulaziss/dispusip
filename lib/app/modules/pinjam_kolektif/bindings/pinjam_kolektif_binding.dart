import 'package:dispusip/app/modules/pinjam_kolektif/controllers/pinjam_kolektif_controller.dart';
import 'package:get/get.dart';

class PinjamKolektifBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PinjamKolektifController>(() => PinjamKolektifController());
  }
}
