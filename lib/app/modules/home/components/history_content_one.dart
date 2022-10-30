import 'package:dispusip/app/modules/home/components/history_card_item.dart';
import 'package:dispusip/app/modules/home/components/history_empty.dart';
import 'package:dispusip/app/modules/home/controllers/history_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HistoryContentOne extends GetView<HistoryController> {
  const HistoryContentOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Expanded(
        child: controller.isLoadingHistoryLoan.value
            ? LoadingIndicatorBounce(size: 25.w)
            : controller.historyLoan.value.result.isNotEmpty
                ? ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: Insets.med),
                    itemCount: controller.historyLoan.value.result.length,
                    itemBuilder: (context, index) {
                      return HistoryCardItem(
                        author:
                            controller.historyLoan.value.result[index].author,
                        title: controller.historyLoan.value.result[index].title,
                        date:
                            controller.historyLoan.value.result[index].dueDate,
                        image:
                            controller.historyLoan.value.result[index].photos,
                        isDone: false,
                      );
                    },
                  )
                : const HistoryEmpty(),
      ),
    );
  }
}
