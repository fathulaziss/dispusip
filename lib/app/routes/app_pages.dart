import 'package:dispusip/app/modules/about_app/bindings/about_app_binding.dart';
import 'package:dispusip/app/modules/about_app/views/about_app_view.dart';
import 'package:dispusip/app/modules/api_log/bindings/api_log_binding.dart';
import 'package:dispusip/app/modules/api_log/views/api_log_view.dart';
import 'package:dispusip/app/modules/blocked_view.dart';
import 'package:dispusip/app/modules/book_category/bindings/book_category_binding.dart';
import 'package:dispusip/app/modules/book_category/views/book_category_view.dart';
import 'package:dispusip/app/modules/book_detail/bindings/book_detail_binding.dart';
import 'package:dispusip/app/modules/book_detail/views/book_detail_view.dart';
import 'package:dispusip/app/modules/change_password/bindings/change_password_binding.dart';
import 'package:dispusip/app/modules/change_password/views/change_password_view.dart';
import 'package:dispusip/app/modules/delivery_address/bindings/delivery_address_binding.dart';
import 'package:dispusip/app/modules/delivery_address/views/delivery_address_edit_view.dart';
import 'package:dispusip/app/modules/delivery_address/views/delivery_address_view.dart';
import 'package:dispusip/app/modules/forgot_password/bindings/forgot_password_binding.dart';
import 'package:dispusip/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:dispusip/app/modules/home/bindings/home_binding.dart';
import 'package:dispusip/app/modules/home/views/home_view.dart';
import 'package:dispusip/app/modules/klik/bindings/klik_binding.dart';
import 'package:dispusip/app/modules/klik/views/klik_view.dart';
import 'package:dispusip/app/modules/kritik_saran/bindings/kritik_saran_binding.dart';
import 'package:dispusip/app/modules/kritik_saran/views/kritik_saran_view.dart';
import 'package:dispusip/app/modules/kunjungan/bindings/kunjungan_binding.dart';
import 'package:dispusip/app/modules/kunjungan/views/kunjungan_view.dart';
import 'package:dispusip/app/modules/lare_osing/bindings/lare_osing_binding.dart';
import 'package:dispusip/app/modules/lare_osing/views/lare_osing_view.dart';
import 'package:dispusip/app/modules/login/bindings/login_binding.dart';
import 'package:dispusip/app/modules/login/views/login_view.dart';
import 'package:dispusip/app/modules/member_detail/bindings/member_detail_binding.dart';
import 'package:dispusip/app/modules/member_detail/views/member_detail_view.dart';
import 'package:dispusip/app/modules/news/bindings/news_binding.dart';
import 'package:dispusip/app/modules/news/views/news_detail_view.dart';
import 'package:dispusip/app/modules/news/views/news_view.dart';
import 'package:dispusip/app/modules/notification/bindings/notification_binding.dart';
import 'package:dispusip/app/modules/notification/views/notification_view.dart';
import 'package:dispusip/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:dispusip/app/modules/onboarding/views/onboarding_view.dart';
import 'package:dispusip/app/modules/pinjam_kolektif/bindings/pinjam_kolektif_binding.dart';
import 'package:dispusip/app/modules/pinjam_kolektif/views/pinjam_kolektif_view.dart';
import 'package:dispusip/app/modules/profile/bindings/profile_binding.dart';
import 'package:dispusip/app/modules/profile/views/profile_view.dart';
import 'package:dispusip/app/modules/register/bindings/register_binding.dart';
import 'package:dispusip/app/modules/register/views/register_view.dart';
import 'package:dispusip/app/modules/rest_area/bindings/rest_area_binding.dart';
import 'package:dispusip/app/modules/rest_area/views/rest_area_view.dart';
import 'package:dispusip/app/modules/service_policy/bindings/service_policy_binding.dart';
import 'package:dispusip/app/modules/service_policy/views/service_policy_view.dart';
import 'package:dispusip/app/modules/setting/bindings/setting_binding.dart';
import 'package:dispusip/app/modules/setting/views/setting_view.dart';
import 'package:dispusip/app/modules/splash_screen_view.dart';
import 'package:dispusip/app/modules/under_development_view.dart';
import 'package:dispusip/app/modules/usulan_buku/bindings/usulan_buku_binding.dart';
import 'package:dispusip/app/modules/usulan_buku/views/usulan_buku_view.dart';
import 'package:dispusip/app/modules/warna_pelangi/bindings/warna_pelangi_binding.dart';
import 'package:dispusip/app/modules/warna_pelangi/views/warna_pelangi_view.dart';
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
      name: _Paths.UNDER_DEVELOPMENT,
      page: () => const UnderDevelopmentView(),
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
    GetPage(
      name: _Paths.PINJAM_KOLEKTIF,
      page: () => const PinjamKolektifView(),
      binding: PinjamKolektifBinding(),
    ),
    GetPage(
      name: _Paths.KUNJUNGAN,
      page: () => const KunjunganView(),
      binding: KunjunganBinding(),
    ),
    GetPage(
      name: _Paths.KRITIK_SARAN,
      page: () => const KritikSaranView(),
      binding: KritikSaranBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERY_ADDRESS,
      page: () => const DeliveryAddressView(),
      binding: DeliveryAddressBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERY_ADDRESS_EDIT,
      page: () => const DeliveryAddressEditView(),
      binding: DeliveryAddressBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE_POLICY,
      page: () => const ServicePolicyView(),
      binding: ServicePolicyBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_APP,
      page: () => const AboutAppView(),
      binding: AboutAppBinding(),
    ),
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.NEWS_DETAIL,
      page: () => const NewsDetailView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.MEMBER_DETAIL,
      page: () => const MemberDetailView(),
      binding: MemberDetailBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_CATEGORY,
      page: () => const BookCategoryView(),
      binding: BookCategoryBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.LARE_OSING,
      page: () => const LareOsingView(),
      binding: LareOsingBinding(),
    ),
    GetPage(
      name: _Paths.KLIK,
      page: () => const KlikView(),
      binding: KlikBinding(),
    ),
    GetPage(
      name: _Paths.WARNA_PELANGI,
      page: () => const WarnaPelangiView(),
      binding: WarnaPelangiBinding(),
    ),
    GetPage(
      name: _Paths.REST_AREA,
      page: () => const RestAreaView(),
      binding: RestAreaBinding(),
    ),
  ];
}
