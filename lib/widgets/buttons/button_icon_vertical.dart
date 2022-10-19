import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonIconVertical extends StatelessWidget {
  const ButtonIconVertical({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.textStyle,
    this.iconSize,
    this.width,
  }) : super(key: key);
  final String icon;
  final String text;
  final double? width;
  final double? iconSize;
  final TextStyle? textStyle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox.square(
            dimension: iconSize ?? 65.w,
            child: Padding(
              padding: EdgeInsets.all(Insets.xs),
              child: Image.asset(AppAsset.icon(icon)),
            ),
          ),
          SizedBox(
            width: width ?? 100.w,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle ??
                  TextStyles.desc.copyWith(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
