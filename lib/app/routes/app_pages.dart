import 'package:dispusip/app/modules/api_log/bindings/api_log_binding.dart';
import 'package:dispusip/app/modules/api_log/views/api_log_view.dart';
import 'package:dispusip/app/modules/blocked_view.dart';
import 'package:dispusip/app/modules/book_detail/bindings/book_detail_binding.dart';
import 'package:dispusip/app/modules/book_detail/views/book_detail_view.dart';
import 'package:dispusip/app/modules/forgot_password/bindings/forgot_password_binding.dart';
import 'package:dispusip/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:dispusip/app/modules/home/bindings/home_binding.dart';
import 'package:dispusip/app/modules/home/views/home_view.dart';
import 'package:dispusip/app/modules/login/bindings/login_binding.dart';
import 'package:dispusip/app/modules/login/views/login_view.dart';
import 'package:dispusip/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:dispusip/app/modules/onboarding/views/onboarding_view.dart';
import 'package:dispusip/app/modules/register/bindings/register_binding.dart';
import 'package:dispusip/app/modules/register/views/register_view.dart';
import 'package:dispusip/app/modules/splash_screen_view.dart';
import 'package:dispusip/app/modules/usulan_buku/bindings/usulan_buku_binding.dart';
import 'package:dispusip/app/modules/usulan_buku/views/usulan_buku_view.dart';
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
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_DETAIL,
      page: () => const BookDetailView(),
      binding: BookDetailBinding(),
    ),
    GetPage(
      name: _Paths.USULAN_BUKU,
      page: () => const UsulanBukuView(),
      binding: UsulanBukuBinding(),
    ),
  ];
}
