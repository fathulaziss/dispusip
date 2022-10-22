import 'package:dispusip/app/modules/home/components/home_new_collection_card.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/others/shimmer_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeNewCollection extends GetView<HomeController> {
  const HomeNewCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Koleksi Terbaru',
              style: TextStyles.title.copyWith(fontSize: 14.w),
            ),
            verticalSpace(10.h),
            if (controller.isLoadingNewCollection.value)
              SizedBox(
                width: Get.width,
                height: 240.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ShimmerIndicator(
                      width: 150.w,
                      height: 240.h,
                      radius: 10.w,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.only(
                        right: index != 3 ? 14.w : 0,
                        bottom: 5.h,
                        top: 5.h,
                        left: index != 0 ? 0 : 5.w,
                      ),
                    );
                  },
                ),
              )
            else
              SizedBox(
                width: Get.width,
                height: 240.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.listNewCollection.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return HomeNewCollectionCard(
                      data: controller.listNewCollection[index],
                      margin: EdgeInsets.only(
                        right: index != controller.listNewCollection.length
                            ? 14.w
                            : 0,
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
