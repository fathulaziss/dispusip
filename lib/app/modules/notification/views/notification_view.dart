import 'package:dispusip/app/modules/notification/components/notification_empty.dart';
import 'package:dispusip/app/modules/notification/controllers/notification_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
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
        child: controller.isLoading.value
            ? LoadingIndicatorBounce(size: 25.w)
            : controller.listNotification.isNotEmpty
                ? ListView.builder(
                    padding: EdgeInsets.all(Insets.med),
                    itemCount: controller.listNotification.length,
                    itemBuilder: (context, index) {
                      return CardApp(
                        margin: EdgeInsets.symmetric(vertical: Insets.sm),
                        padding: EdgeInsets.all(Insets.lg),
                        color: Colors.white,
                        isOutlined: true,
                        isShowShadows: true,
                        borderWidth: 0.5,
                        radius: 15.w,
                        shadows: Shadows.universal2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 42.w,
                              height: 42.w,
                              padding: EdgeInsets.all(10.w),
                              margin: EdgeInsets.only(right: 10.w),
                              decoration: BoxDecoration(
                                color: controller.listNotification[index].isRead
                                    ? AppColor.primaryColor
                                    : AppColor.darkGrey,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                AppAsset.icon('ic_notification.png'),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.listNotification[index].title,
                                    style: TextStyles.desc
                                        .copyWith(fontWeight: FontWeight.w600),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  verticalSpace(Insets.xs),
                                  Text(
                                    controller.listNotification[index].desc,
                                    style: TextStyles.desc
                                        .copyWith(fontSize: 10.w),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                            Text(
                              controller.listNotification[index].time,
                              style: TextStyles.desc.copyWith(
                                color: AppColor.darkGrey,
                                fontSize: 10.w,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  )
                : const NotificationEmpty(),
      ),
    );
  }
}
