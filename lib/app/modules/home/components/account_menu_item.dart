import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountMenuItem extends StatelessWidget {
  const AccountMenuItem({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final Function() onTap;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyles.text),
            Icon(Icons.arrow_forward_ios, size: 18.w)
          ],
        ),
      ),
    );
  }
}
