import 'package:dispusip/app/modules/delivery_address/controllers/delivery_address_controller.dart';
import 'package:get/get.dart';

class DeliveryAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliveryAddressController>(() => DeliveryAddressController());
  }
}
