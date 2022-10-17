import 'package:dispusip/app/modules/home/components/home_background.dart';
import 'package:dispusip/app/modules/home/components/home_book_category.dart';
import 'package:dispusip/app/modules/home/components/home_header.dart';
import 'package:dispusip/app/modules/home/components/home_new_collection.dart';
import 'package:dispusip/app/modules/home/components/home_slider.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TabHome extends GetView<HomeController> {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              height: 360.h,
              child: Stack(
                children: [
                  HomeBackground(height: Get.height / 3),
                  Column(
                    children: const [
                      HomeHeader(),
                      HomeSlider(),
                    ],
                  ),
                ],
              ),
            ),
            const HomeBookCategory(),
            const HomeNewCollection(),
          ],
        ),
      ),
    );
  }
}
