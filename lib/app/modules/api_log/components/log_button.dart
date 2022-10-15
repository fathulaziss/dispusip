import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LogButton extends StatelessWidget {
  const LogButton({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 48.w,
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.API_LOG),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: Corners.xxlBorder,
            color: color,
          ),
          child: const Icon(Icons.bug_report),
        ),
      ),
    );
  }
}
