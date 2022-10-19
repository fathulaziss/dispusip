import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeMostCollectionBorrowed extends GetView<HomeController> {
  const HomeMostCollectionBorrowed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Koleksi Sering Dipinjam', style: TextStyles.title),
          verticalSpace(10.h),
          SizedBox(
            width: Get.width,
            height: 240.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: controller.listMostCollectionBorrowed.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CardApp(
                  isShowShadows: true,
                  margin: EdgeInsets.only(
                    right: index != controller.listMostCollectionBorrowed.length
                        ? 14.w
                        : 0,
                    bottom: 5.h,
                    top: 5.h,
                    left: index != 0 ? 0 : 5.w,
                  ),
                  width: 150.w,
                  padding: EdgeInsets.zero,
                  radius: 10.w,
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Expanded(
                        child: CardApp(
                          radius: 10.w,
                          color: AppColor.grey,
                          child: Image.asset(
                            AppAsset.image(
                              controller
                                  .listMostCollectionBorrowed[index].image,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Get.width,
                              height: 18.h,
                              child: Text(
                                controller
                                    .listMostCollectionBorrowed[index].title,
                                style: TextStyles.desc
                                    .copyWith(fontWeight: FontWeight.w600),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            verticalSpace(Insets.xs),
                            SizedBox(
                              width: Get.width,
                              height: 15.h,
                              child: Text(
                                controller
                                    .listMostCollectionBorrowed[index].title,
                                style: TextStyles.text.copyWith(
                                  fontSize: 10.w,
                                  color: AppColor.darkGrey,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          verticalSpace(30.h),
        ],
      ),
    );
  }
}