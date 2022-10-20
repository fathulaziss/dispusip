import 'package:dispusip/app/modules/home/components/history_content_one.dart';
import 'package:dispusip/app/modules/home/components/history_content_two.dart';
import 'package:dispusip/app/modules/home/components/history_header.dart';
import 'package:dispusip/app/modules/home/components/history_tabbar.dart';
import 'package:dispusip/app/modules/home/controllers/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabHistory extends GetView<HistoryController> {
  const TabHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: double.infinity,
        child: Flex(
          direction: Axis.vertical,
          children: [
            const HistoryHeader(),
            const HistoryTabbar(),
            if (controller.tabbarIndex.value == 0)
              const HistoryContentOne()
            else
              const HistoryContentTwo()
          ],
        ),
      ),
    );
  }
}
