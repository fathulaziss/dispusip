import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterHeaderForm extends StatelessWidget {
  const RegisterHeaderForm({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return CardApp(
      color: AppColor.primaryColor.withOpacity(0.45),
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(minHeight: 40.h, maxHeight: 40.h),
      margin: EdgeInsets.only(bottom: Insets.lg),
      child: Stack(
        children: [
          Positioned(
            right: 40,
            bottom: -5,
            child: Icon(Icons.check, color: Colors.white70, size: 60.w),
          ),
          Padding(
            padding: EdgeInsets.only(left: Insets.med),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: TextStyles.text
                    .copyWith(fontSize: 16.w, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
