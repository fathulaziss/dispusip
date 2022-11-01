import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardNotification extends GetView<DashboardController> {
  const DashboardNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () => Get.toNamed(Routes.NOTIFICATION),
        child: Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white),
          ),
          child: SizedBox.square(
            dimension: 40.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox.square(
                  dimension: 20.w,
                  child: Image.asset(AppAsset.icon('ic_notification.png')),
                ),
                if (controller.cUserInfo.listNotification.isNotEmpty &&
                    controller.cUserInfo.totalNotificationUnread.value > 0)
                  Positioned(
                    right:
                        controller.cUserInfo.totalNotificationUnread.value < 9
                            ? 10.w
                            : 5.w,
                    bottom: 22.w,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.red,
                      ),
                      padding:
                          controller.cUserInfo.totalNotificationUnread.value < 9
                              ? EdgeInsets.all(4.w)
                              : EdgeInsets.all(2.w),
                      child: Text(
                        controller.cUserInfo.totalNotificationUnread.value > 99
                            ? '99+'
                            : '${controller.cUserInfo.totalNotificationUnread.value}',
                        style: TextStyles.text.copyWith(
                          color: Colors.white,
                          fontSize: 6.w,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                else
                  const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
