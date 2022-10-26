import 'package:dispusip/app/modules/home/components/dashboard_card_two.dart';
import 'package:dispusip/app/modules/home/components/dashboard_information.dart';
import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardHeaderTwo extends GetView<DashboardController> {
  const DashboardHeaderTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(30.w),
              const DashboardInformasi(),
              const DashboardCardTwo(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Corners.xxlRadius,
                  topRight: Corners.xxlRadius,
                ),
                color: const Color(0xFFFCFCFC),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CardApp(
                    width: 60.w,
                    height: 10.w,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(minHeight: 10.h),
                    color: const Color(0xFFD9D9D9),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
