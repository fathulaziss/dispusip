import 'package:carousel_slider/carousel_slider.dart';
import 'package:dispusip/app/modules/home/components/home_slider_card.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/others/shimmer_indicator.dart';
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
        child: controller.isLoadingSlider.value
            ? SizedBox(
                width: Get.width,
                height: 140.w,
                child: Stack(
                  children: [
                    CarouselSlider.builder(
                      itemCount: 3,
                      options: CarouselOptions(
                        height: Get.height,
                        autoPlay: true,
                        initialPage: 1,
                        viewportFraction: 0.85,
                        onPageChanged: (index, reason) {
                          controller.activeSliderIndex(index);
                        },
                      ),
                      itemBuilder: (context, index, realIndex) {
                        return ShimmerIndicator(
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          width: double.infinity,
                          height: 160.w,
                          radius: 15.w,
                        );
                      },
                    ),
                    Positioned(
                      right: 45.w,
                      bottom: 20.w,
                      child: AnimatedSmoothIndicator(
                        effect: JumpingDotEffect(
                          dotHeight: 6.w,
                          dotWidth: 6.w,
                          spacing: Insets.xs,
                          dotColor: AppColor.darkGrey,
                          activeDotColor: AppColor.blue,
                        ),
                        activeIndex: controller.activeSliderIndex.value,
                        count: 3,
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(
                width: Get.width,
                height: 140.w,
                child: controller.listSlider.isNotEmpty
                    ? Stack(
                        children: [
                          CarouselSlider.builder(
                            itemCount: controller.listSlider.length,
                            options: CarouselOptions(
                              height: Get.height,
                              autoPlay: true,
                              initialPage: 1,
                              viewportFraction: 0.85,
                              onPageChanged: (index, reason) {
                                controller.activeSliderIndex(index);
                              },
                            ),
                            itemBuilder: (context, index, realIndex) {
                              return HomeSliderCard(
                                data: controller.listSlider[index],
                              );
                            },
                          ),
                          Positioned(
                            right: 45.w,
                            bottom: 20.w,
                            child: AnimatedSmoothIndicator(
                              effect: JumpingDotEffect(
                                dotHeight: 6.w,
                                dotWidth: 6.w,
                                spacing: Insets.xs,
                                dotColor: AppColor.darkGrey,
                                activeDotColor: AppColor.blue,
                              ),
                              activeIndex: controller.activeSliderIndex.value,
                              count: controller.listSlider.length,
                            ),
                          ),
                        ],
                      )
                    : Stack(
                        children: [
                          CarouselSlider.builder(
                            itemCount: 3,
                            options: CarouselOptions(
                              height: Get.height,
                              autoPlay: true,
                              initialPage: 1,
                              viewportFraction: 0.85,
                              onPageChanged: (index, reason) {
                                controller.activeSliderIndex(index);
                              },
                            ),
                            itemBuilder: (context, index, realIndex) {
                              return CardApp(
                                radius: 15.w,
                                margin: EdgeInsets.symmetric(horizontal: 5.w),
                                padding: EdgeInsets.zero,
                                color: AppColor.grey,
                                isOutlined: true,
                              );
                            },
                          ),
                          Positioned(
                            right: 45.w,
                            bottom: 20.w,
                            child: AnimatedSmoothIndicator(
                              effect: JumpingDotEffect(
                                dotHeight: 6.w,
                                dotWidth: 6.w,
                                spacing: Insets.xs,
                                dotColor: AppColor.darkGrey,
                                activeDotColor: AppColor.blue,
                              ),
                              activeIndex: controller.activeSliderIndex.value,
                              count: 3,
                            ),
                          ),
                        ],
                      ),
              ),
      ),
    );
  }
}
