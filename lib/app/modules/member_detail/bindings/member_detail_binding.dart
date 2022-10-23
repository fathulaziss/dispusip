import 'package:dispusip/app/modules/member_detail/controllers/member_detail_controller.dart';
import 'package:get/get.dart';

class MemberDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MemberDetailController>(() => MemberDetailController());
  }
}
