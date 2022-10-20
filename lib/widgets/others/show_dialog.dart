import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

showPopUpInfo({
  String? title,
  String? description,
  String? labelButton,
  Function()? onPress,
}) {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        padding: EdgeInsets.fromLTRB(20.w.w, 20.w, 20.w, 4.w),
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
    barrierDismissible: false,
  );
}

showPopUpChoice({
  String? title,
  String? description,
  String? labelNegatif,
  String? labelPositif,
  String? imageUri,
  double? imageSize,
  bool? dismissible,
  Function()? onConfirm,
  Function()? onCancel,
}) {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: Insets.lg, vertical: Insets.xl),
        decoration: BoxDecoration(
          borderRadius: Corners.medBorder,
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title ?? 'Konfirmasi',
              style: TextStyles.text.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16.w,
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(Insets.med),
            Text(
              description ?? '',
              style: TextStyles.text,
              textAlign: TextAlign.center,
            ),
            verticalSpace(36.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.lg),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: ButtonPrimary(
                      radius: 10.w,
                      color: AppColor.disabledColor,
                      onTap: onCancel ?? Get.back,
                      label: labelNegatif ?? 'CANCEL',
                      textStyle: TextStyles.text.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  horizontalSpace(Insets.med),
                  Expanded(
                    child: ButtonPrimary(
                      radius: 10.w,
                      onTap: onConfirm ?? Get.back,
                      label: labelPositif ?? 'OK',
                      textStyle: TextStyles.text.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    barrierDismissible: dismissible ?? true,
  );
}

showToast({
  required String message,
  Color? color,
  Color? textColor,
  ToastGravity? gravity,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: gravity ?? ToastGravity.BOTTOM,
    backgroundColor: color ?? AppColor.red,
    textColor: textColor ?? Colors.white,
    fontSize: 14.w,
  );
}
