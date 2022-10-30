import 'package:dispusip/app/modules/home/components/history_card_item.dart';
import 'package:dispusip/app/modules/home/components/history_empty.dart';
import 'package:dispusip/app/modules/home/controllers/history_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HistoryContentTwo extends GetView<HistoryController> {
  const HistoryContentTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: controller.isLoadingHistoryReturn.value
            ? LoadingIndicatorBounce(size: 25.w)
            : controller.historyReturn.value.result.isNotEmpty
                ? ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: Insets.med),
                    itemCount: controller.historyReturn.value.result.length,
                    itemBuilder: (context, index) {
                      return HistoryCardItem(
                        author:
                            controller.historyReturn.value.result[index].author,
                        title:
                            controller.historyReturn.value.result[index].title,
                        date: controller
                            .historyReturn.value.result[index].dueDate,
                        image:
                            controller.historyReturn.value.result[index].photos,
                        isDone: true,
                      );
                    },
                  )
                : const HistoryEmpty(),
      ),
    );
  }
}
