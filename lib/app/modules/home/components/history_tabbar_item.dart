import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryTabbarItem extends StatelessWidget {
  const HistoryTabbarItem({
    Key? key,
    required this.isActive,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final bool isActive;
  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CardApp(
        width: double.infinity,
        color: isActive ? AppColor.primaryColor : AppColor.grey,
        constraints: BoxConstraints(minHeight: 24.h),
        padding:
            EdgeInsets.symmetric(horizontal: Insets.med, vertical: Insets.sm),
        radius: 25.w,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isActive)
                Padding(
                  padding: EdgeInsets.only(right: Insets.xs),
                  child: Icon(Icons.check, size: 24.h, color: Colors.white),
                ),
              Text(
                label,
                style: TextStyles.desc.copyWith(
                  color: isActive ? Colors.white : AppColor.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
