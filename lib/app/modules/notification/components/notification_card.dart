import 'package:dispusip/app/models/notification_model.dart';
import 'package:dispusip/app/modules/notification/controllers/notification_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/utils/format_date_time.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationCard extends GetView<NotificationController> {
  const NotificationCard({Key? key, required this.data}) : super(key: key);

  final NotificationModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (data.status == '1') {
          controller.updateNotificationItem(data.id);
        }
      },
      child: CardApp(
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
                color: data.status == '0'
                    ? AppColor.darkGrey
                    : AppColor.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AppAsset.icon('ic_notification.png')),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data.title,
                    style:
                        TextStyles.desc.copyWith(fontWeight: FontWeight.w600),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(Insets.xs),
                  Text(
                    data.body,
                    style: TextStyles.desc.copyWith(fontSize: 10.w),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Text(
              FormatDateTime.notification(data.createdDate),
              style: TextStyles.desc
                  .copyWith(color: AppColor.darkGrey, fontSize: 10.w),
            )
          ],
        ),
      ),
    );
  }
}
