import 'package:dispusip/app/modules/home/components/dashboard_header.dart';
import 'package:dispusip/app/modules/home/components/home_background.dart';
import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/cards/card_member.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TabDashboard extends GetView<DashboardController> {
  const TabDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          HomeBackground(
            height: Get.height / 1.3,
            color1: AppColor.primaryColor,
            color2: const Color(0xFFFCFCFC),
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(48.h),
                  const DashboardHeader(),
                  verticalSpace(37.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w),
                    child: Text(
                      'Kartu Anggota Virtual',
                      style: TextStyles.title.copyWith(color: Colors.white),
                    ),
                  ),
                  verticalSpace(Insets.med),
                  const CardMember(),
                  verticalSpace(36.h),
                  CardApp(
                    width: double.infinity,
                    color: const Color(0xFFFCFCFC),
                    radius: 25.w,
                    child: Column(
                      children: [
                        CardApp(
                          width: 60.w,
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(minHeight: 10.h),
                          color: const Color(0xFFD9D9D9),
                        ),
                        verticalSpace(Insets.lg),
                        GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 1.1,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: controller.dashboardMenu
                              .map((element) => element)
                              .toList(),
                        ),
                        verticalSpace(Insets.xl),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
