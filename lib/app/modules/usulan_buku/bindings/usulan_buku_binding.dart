import 'package:dispusip/app/modules/usulan_buku/controllers/usulan_buku_controller.dart';
import 'package:get/get.dart';

class UsulanBukuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsulanBukuController>(() => UsulanBukuController());
  }
}
