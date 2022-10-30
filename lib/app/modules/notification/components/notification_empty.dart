import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationEmpty extends StatelessWidget {
  const NotificationEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100.w,
          height: 100.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.primaryColor,
          ),
          child: Image.asset(AppAsset.icon('ic_notification.png')),
        ),
        verticalSpace(Insets.med),
        Text('Tidak ada notifikasi', style: TextStyles.text)
      ],
    );
  }
}
