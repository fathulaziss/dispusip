import 'package:dispusip/app/modules/home/components/home_news_card.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/others/shimmer_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeNews extends GetView<HomeController> {
  const HomeNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Berita Dispusip Banyuwangi', style: TextStyles.title),
            verticalSpace(10.h),
            if (controller.isLoading.value)
              SizedBox(
                width: Get.width,
                height: 230.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: ShimmerIndicator(
                        width: 304.w,
                        height: 230.h,
                        radius: 10.w,
                      ),
                    );
                  },
                ),
              )
            else
              SizedBox(
                width: Get.width,
                height: 230.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.listNews.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return HomeNewsCard(
                      data: controller.listNews[index],
                      margin: EdgeInsets.only(
                        right: index != controller.listNews.length ? 14.w : 0,
                        bottom: 5.h,
                        top: 5.h,
                        left: index != 0 ? 0 : 5.w,
                      ),
                    );
                  },
                ),
              ),
            verticalSpace(30.h),
          ],
        ),
      ),
    );
  }
}
