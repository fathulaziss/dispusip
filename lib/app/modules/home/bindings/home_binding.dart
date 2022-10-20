import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/app/modules/home/controllers/history_controller.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/app/modules/home/controllers/opac_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<HomeController>(() => HomeController())
      ..lazyPut<OpacController>(() => OpacController())
      ..lazyPut<DashboardController>(() => DashboardController())
      ..lazyPut<HistoryController>(() => HistoryController());
  }
}
