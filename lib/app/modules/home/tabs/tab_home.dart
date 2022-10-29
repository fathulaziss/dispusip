import 'package:dispusip/app/modules/home/components/home_background.dart';
import 'package:dispusip/app/modules/home/components/home_book_category.dart';
import 'package:dispusip/app/modules/home/components/home_header.dart';
import 'package:dispusip/app/modules/home/components/home_most_collection_borrowed.dart';
import 'package:dispusip/app/modules/home/components/home_new_collection.dart';
import 'package:dispusip/app/modules/home/components/home_news.dart';
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
            Container(
              color: const Color(0xFFFFFFFF),
            ),
            SizedBox(
              width: Get.width,
              height: 315.w,
              child: Stack(
                children: [
                  HomeBackground(height: Get.width / 1.6.w),
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
            const HomeMostCollectionBorrowed(),
            const HomeNews(),
          ],
        ),
      ),
    );
  }
}
