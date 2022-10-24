import 'package:dispusip/app/modules/book_detail2/controllers/book_detail2_controller.dart';
import 'package:dispusip/app/modules/home/components/home_background.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetail2Background extends GetView<BookDetail2Controller> {
  const BookDetail2Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          if (controller.data.value.photos.isNotEmpty)
            Image.network(
              controller.data.value.photos,
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
            height: Get.height,
            color1: AppColor.primaryColor.withOpacity(0.85),
            color2: Colors.white,
          ),
        ],
      ),
    );
  }
}
