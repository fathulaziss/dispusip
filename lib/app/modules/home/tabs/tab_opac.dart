import 'package:dispusip/app/modules/home/components/opac_card_item.dart';
import 'package:dispusip/app/modules/home/components/opac_header.dart';
import 'package:dispusip/app/modules/home/components/opac_search_empty.dart';
import 'package:dispusip/app/modules/home/controllers/opac_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TabOpac extends GetView<OpacController> {
  const TabOpac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: double.infinity,
        child: Flex(
          direction: Axis.vertical,
          children: [
            const OpacHeader(),
            Expanded(
              child: controller.isLoading.value
                  ? LoadingIndicatorBounce(size: 25.w)
                  : controller.listOpac.value.result.isNotEmpty
                      ? ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: controller.listOpac.value.result.length,
                          itemBuilder: (context, index) {
                            return OpacCardItem(
                              data: controller.listOpac.value.result[index],
                              isAssetImage: false,
                              onTap: () => Get.toNamed(
                                Routes.BOOK_DETAIL,
                                arguments: {
                                  'id':
                                      controller.listOpac.value.result[index].id
                                },
                              ),
                            );
                          },
                        )
                      : const OpacSearchEmpty(),
            ),
            verticalSpace(Insets.sm),
          ],
        ),
      ),
    );
  }
}
