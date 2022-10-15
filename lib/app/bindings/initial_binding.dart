import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/app/controllers/utility_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..put(UserInfoController())
      ..put(UtilityController());
  }
}
