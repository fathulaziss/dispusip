import 'package:dispusip/app/modules/kritik_saran/controllers/kritik_saran_controller.dart';
import 'package:get/get.dart';

class KritikSaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KritikSaranController>(() => KritikSaranController());
  }
}
