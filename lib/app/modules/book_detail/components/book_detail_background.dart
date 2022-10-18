import 'package:dispusip/app/modules/book_detail/controllers/book_detail_controller.dart';
import 'package:dispusip/app/modules/home/components/home_background.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetailBackground extends GetView<BookDetailController> {
  const BookDetailBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          if (controller.data.value.image.isNotEmpty)
            Image.asset(
              AppAsset.image(controller.data.value.image),
              height: double.infinity,
              fit: BoxFit.fill,
            )
          else
            Image.asset(
              AppAsset.image('img_book_default.png'),
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          HomeBackground(
            height: Get.height / 1.2,
            color1: AppColor.primaryColor.withOpacity(0.85),
            color2: Colors.white,
          ),
          // Container(
          //   width: double.infinity,
          //   color: AppColor.primaryColor.withOpacity(0.85),
          // ),
        ],
      ),
    );
  }
}
