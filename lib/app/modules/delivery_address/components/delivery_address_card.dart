import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryAddressCard extends StatelessWidget {
  const DeliveryAddressCard({
    Key? key,
    required this.alamat,
    required this.buttonColor,
    required this.buttonLabel,
    required this.kelurahan,
    required this.kotaKabupaten,
    required this.onTap,
    required this.rTrW,
    required this.title,
  }) : super(key: key);

  final String title;
  final String alamat;
  final String rTrW;
  final String kelurahan;
  final String kotaKabupaten;
  final String buttonLabel;
  final Color buttonColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CardApp(
      width: double.infinity,
      radius: 15.w,
      isShowShadows: true,
      isOutlined: true,
      outlineColor: AppColor.grey,
      shadows: [
        BoxShadow(
          color: AppColor.primaryColor.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(2, 5),
        ),
      ],
      padding:
          EdgeInsets.symmetric(horizontal: Insets.lg, vertical: Insets.med),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.title.copyWith(fontSize: 16.w),
          ),
          verticalSpace(Insets.sm),
          Text(
            alamat,
            style: TextStyles.text.copyWith(color: AppColor.darkGrey),
          ),
          Text(rTrW, style: TextStyles.text.copyWith(color: AppColor.darkGrey)),
          Text(
            kelurahan,
            style: TextStyles.text.copyWith(color: AppColor.darkGrey),
          ),
          Text(
            kotaKabupaten,
            style: TextStyles.text.copyWith(color: AppColor.darkGrey),
          ),
          verticalSpace(10.h),
          InkWell(
            onTap: onTap,
            child: CardApp(
              width: double.infinity,
              color: buttonColor,
              radius: 20.w,
              padding: EdgeInsets.symmetric(vertical: Insets.sm),
              constraints: BoxConstraints(minHeight: 25.h),
              child: SizedBox(
                child: Text(
                  buttonLabel,
                  style: TextStyles.text.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
