import 'package:dispusip/app/modules/home/components/dashboard_header_content.dart';
import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TabDashboard extends GetView<DashboardController> {
  const TabDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.primaryColor,
            shadowColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 335.w,
            toolbarHeight: 253.w,
            pinned: true,
            floating: true,
            automaticallyImplyLeading: false,
            flexibleSpace: const DashboardHeaderContent(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                GridView.count(
                  padding: EdgeInsets.zero,
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
    );
  }
}
