import 'package:dispusip/app/bindings/initial_binding.dart';
import 'package:dispusip/app/controllers/utility_controller.dart';
import 'package:dispusip/app/modules/api_log/components/overlay_log_button.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/pages/page_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

start() {
  Get.put(UtilityController());
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final cUtil = Get.find<UtilityController>();
  String pageName = '';
  void _updatePageRoute(Routing? value) {
    try {
      final name = value!.route!.settings.name.toString();
      cUtil.currentPage.value = name;
      setState(() {
        pageName = name;
      });
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColor.greenAccent),
    );

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? widget) => GetMaterialApp(
        title: 'Dispusip',
        theme: AppStyle.appTheme(
          0xFF00B34D,
          Colors.white,
        ),
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaleFactor: Get.width <= 360 ? .85 : 1),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: AppUtils.dismissKeyboard,
              child: Obx(
                () => Stack(
                  children: [
                    child!,
                    if (cUtil.isShowLog.value) const OverlayLogButton(),
                    if (cUtil.isShowLog.value) PageInfo(pageName: pageName),
                  ],
                ),
              ),
            ),
          );
        },
        initialBinding: InitialBinding(),
        initialRoute: Routes.SPLASH_SCREEN,
        getPages: AppPages.routes,
        locale: const Locale('id', 'ID'),
        routingCallback: (value) {
          if (value != null) _updatePageRoute(value);
        },
      ),
    );
    // return GetMaterialApp(
    //   initialRoute: Routes.HOME,
    //   getPages: AppPages.routes,
    // );
  }
}
