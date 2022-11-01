import 'package:dispusip/app/modules/notification/components/notification_card.dart';
import 'package:dispusip/app/modules/notification/components/notification_empty.dart';
import 'package:dispusip/app/modules/notification/controllers/notification_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageDefaultTwo(
        titlePage: 'Notifikasi',
        isScrollable: false,
        padding: EdgeInsets.zero,
        actions: [
          IconButton(
            onPressed: () {
              showPopUpChoice(
                dismissible: false,
                title: 'Informasi',
                description: 'Tandai semua notifikasi sebagai sudah dibaca ?',
                labelNegatif: 'Tidak',
                labelPositif: 'Ya',
                onConfirm: () {
                  controller.updateNotificationAll();
                  Get.back();
                },
              );
            },
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(minHeight: 22.w),
            icon: SizedBox.square(
              dimension: 28.w,
              child: Image.asset(
                AppAsset.icon('ic_checklist.png'),
                color: Colors.white,
              ),
            ),
          ),
          horizontalSpace(Insets.med),
          IconButton(
            onPressed: () {
              showPopUpChoice(
                dismissible: false,
                title: 'Informasi',
                description: 'Hapus semua notifikasi ?',
                labelNegatif: 'Tidak',
                labelPositif: 'Ya',
                onConfirm: () {
                  controller.deleteNotificationAll();
                  Get.back();
                },
              );
            },
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(minHeight: 20.w),
            icon: SizedBox.square(
              dimension: 18.w,
              child: Image.asset(
                AppAsset.icon('ic_trash.png'),
                color: Colors.white,
              ),
            ),
          ),
          horizontalSpace(Insets.xl),
        ],
        child: controller.isLoading.value
            ? LoadingIndicatorBounce(size: 25.w)
            : controller.cUserInfo.listNotification.isNotEmpty
                ? ListView.builder(
                    padding: EdgeInsets.all(Insets.med),
                    itemCount: controller.cUserInfo.listNotification.length,
                    itemBuilder: (context, index) {
                      return NotificationCard(
                        data: controller.cUserInfo.listNotification[index],
                      );
                    },
                  )
                : const NotificationEmpty(),
      ),
    );
  }
}
