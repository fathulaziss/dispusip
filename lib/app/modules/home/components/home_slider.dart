import 'package:carousel_slider/carousel_slider.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends GetView<HomeController> {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(bottom: Insets.xl),
        child: SizedBox(
          width: Get.width,
          height: 160.h,
          child: Stack(
            children: [
              CarouselSlider.builder(
                itemCount: controller.slider.length,
                options: CarouselOptions(
                  height: Get.height,
                  autoPlay: true,
                  initialPage: 1,
                  viewportFraction: 0.9,
                  onPageChanged: (index, reason) {
                    controller.activeSliderIndex(index);
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  return CardApp(
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    padding: EdgeInsets.fromLTRB(12.w, 12.w, 12.w, 40.w),
                    color: AppColor.grey,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        controller.slider[index],
                        style: TextStyles.text,
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                right: 45,
                bottom: 30,
                child: AnimatedSmoothIndicator(
                  effect: JumpingDotEffect(
                    dotHeight: 6.w,
                    dotWidth: 6.w,
                    spacing: Insets.xs,
                    dotColor: AppColor.darkGrey,
                    activeDotColor: AppColor.blue,
                  ),
                  activeIndex: controller.activeSliderIndex.value,
                  count: controller.slider.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
