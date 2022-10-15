import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

showPopUpInfo({
  String? title,
  String? description,
  String? labelButton,
  bool? dismissible,
  Function()? onPress,
}) {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 60.w),
      child: Container(
        padding: EdgeInsets.fromLTRB(12.w, 20.w, 12.w, 4.w),
        decoration: BoxDecoration(
          borderRadius: Corners.smBorder,
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title ?? '',
              style: TextStyles.title,
              textAlign: TextAlign.center,
            ),
            verticalSpace(Insets.med),
            Text(
              description ?? '',
              style: TextStyles.text,
              textAlign: TextAlign.center,
            ),
            verticalSpace(Insets.xl),
            ButtonPrimary(
              // isOutline: true,
              // outlineColor: AppColor.primaryColor,
              // textColor: AppColor.primaryColor,
              // width: Get.width * 0.3,
              onTap: onPress ?? Get.back,
              label: labelButton ?? 'OK',
              // color: Colors.transparent,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    ),
    barrierDismissible: dismissible ?? true,
  );
}
