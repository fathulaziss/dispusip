import 'package:dispusip/app/modules/home/components/home_most_collection_borrowed_card.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/others/shimmer_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeMostCollectionBorrowed extends GetView<HomeController> {
  const HomeMostCollectionBorrowed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Koleksi Sering Dipinjam',
              style: TextStyles.title.copyWith(fontSize: 14.w),
            ),
            verticalSpace(Insets.sm),
            if (controller.isLoadingMostCollectionBorrowed.value)
              SizedBox(
                width: Get.width,
                height: 200.w,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ShimmerIndicator(
                      width: 150.w,
                      height: 200.w,
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
                height: 200.w,
                child: controller.listMostCollectionBorrowed.isNotEmpty
                    ? ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: controller.listMostCollectionBorrowed.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return HomeMostCollectionBorrowdCard(
                            data: controller.listMostCollectionBorrowed[index],
                            margin: EdgeInsets.only(
                              right: index !=
                                      controller
                                          .listMostCollectionBorrowed.length
                                  ? 14.w
                                  : 0,
                              bottom: 5.h,
                              top: 5.h,
                              left: index != 0 ? 0 : 5.w,
                            ),
                          );
                        },
                      )
                    : Center(
                        child: Text('Tidak Ada Data', style: TextStyles.text),
                      ),
              ),
            verticalSpace(Insets.lg),
          ],
        ),
      ),
    );
  }
}
