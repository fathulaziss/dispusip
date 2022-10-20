import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingMenuItem extends StatelessWidget {
  const SettingMenuItem({
    Key? key,
    required this.label,
    required this.onTap,
    this.isUsePrefixIcon = true,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  final String label;
  final Function() onTap;
  final bool isUsePrefixIcon;
  final String? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CardApp(
        width: double.infinity,
        isOutlined: true,
        radius: 12.w,
        borderWidth: 1.5,
        margin: EdgeInsets.only(bottom: 25.h),
        child: Row(
          children: [
            if (isUsePrefixIcon)
              Padding(
                padding: EdgeInsets.only(right: Insets.med),
                child: SizedBox.square(
                  dimension: 18.w,
                  child: Image.asset(AppAsset.icon(prefixIcon ?? '')),
                ),
              ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(label, style: TextStyles.text),
                  if (suffixIcon == null)
                    Icon(Icons.arrow_forward_ios, size: 18.w)
                  else
                    suffixIcon ?? const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
