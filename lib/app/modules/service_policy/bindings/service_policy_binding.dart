import 'package:dispusip/app/modules/service_policy/controllers/service_policy_controller.dart';
import 'package:get/get.dart';

class ServicePolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServicePolicyController>(() => ServicePolicyController());
  }
}
