import 'package:dispusip/app/modules/setting/components/setting_menu_item.dart';
import 'package:dispusip/app/modules/setting/controllers/setting_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Pengaturan',
      isShowFooter: true,
      child: Obx(
        () => Column(
          children: [
            verticalSpace(Insets.lg),
            SettingMenuItem(
              onTap: () => Get.toNamed(Routes.DELIVERY_ADDRESS),
              label: 'Alamat Pengantaran',
              prefixIcon: 'ic_location.png',
            ),
            SettingMenuItem(
              onTap: () {},
              label: 'Email Notification',
              prefixIcon: 'ic_email.png',
              suffixIcon: FlutterSwitch(
                width: 40.w,
                height: 25.h,
                toggleSize: 15.w,
                value: controller.isActiveEmailNotification.value,
                borderRadius: 30.w,
                activeColor: AppColor.blue,
                inactiveColor: AppColor.darkGrey,
                onToggle: (value) {
                  controller.updateStatusEmailNotification();
                },
              ),
            ),
            SettingMenuItem(
              onTap: () => Get.toNamed(Routes.CHANGE_PASSWORD),
              label: 'Ubah Kata Sandi',
              prefixIcon: 'ic_lock.png',
            ),
            SettingMenuItem(
              onTap: () {
                AppUtils.launchInBrowser(controller.listSettingWebview[1].link);
              },
              label: 'Kebijakan Layanan',
              isUsePrefixIcon: false,
            ),
          ],
        ),
      ),
    );
  }
}
