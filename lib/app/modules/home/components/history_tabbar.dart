import 'package:dispusip/app/modules/home/components/history_tabbar_item.dart';
import 'package:dispusip/app/modules/home/controllers/history_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HistoryTabbar extends GetView<HistoryController> {
  const HistoryTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: Row(
          children: [
            Expanded(
              child: HistoryTabbarItem(
                onTap: () {
                  controller.tabbarIndex(0);
                  controller.getHistoryLoan();
                },
                label: 'Belum Dikembalikan',
                isActive: controller.tabbarIndex.value == 0,
              ),
            ),
            horizontalSpace(10.w),
            Expanded(
              child: HistoryTabbarItem(
                label: 'Sudah Dikembalikan',
                onTap: () {
                  controller.tabbarIndex(1);
                  controller.getHistoryReturn();
                },
                isActive: controller.tabbarIndex.value == 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
