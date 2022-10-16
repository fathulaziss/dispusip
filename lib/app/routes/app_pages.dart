import 'package:dispusip/app/modules/api_log/bindings/api_log_binding.dart';
import 'package:dispusip/app/modules/api_log/views/api_log_view.dart';
import 'package:dispusip/app/modules/blocked_view.dart';
import 'package:dispusip/app/modules/home/bindings/home_binding.dart';
import 'package:dispusip/app/modules/home/views/home_view.dart';
import 'package:dispusip/app/modules/login/bindings/login_binding.dart';
import 'package:dispusip/app/modules/login/views/login_view.dart';
import 'package:dispusip/app/modules/splash_screen_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
    ),
    GetPage(
      name: _Paths.BLOCKED,
      page: () => const BlockedView(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.API_LOG,
      page: () => const ApiLogView(),
      binding: ApiLogBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}