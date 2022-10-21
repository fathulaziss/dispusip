import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
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
            Text('Koleksi Terbaru', style: TextStyles.title),
            verticalSpace(10.h),
            if (controller.isLoadingCatalogBook.value)
              const SizedBox()
            else
              SizedBox(
                width: Get.width,
                height: 240.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.listCatalogBook.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardApp(
                      isShowShadows: true,
                      margin: EdgeInsets.only(
                        right: index != controller.listCatalogBook.length
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
                              // child: Image.asset(
                              //   AppAsset.image(
                              //     controller.listCatalogBook[index].cover,
                              //   ),
                              // ),
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
                                    controller.listCatalogBook[index].title,
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
                                    controller.listCatalogBook[index].author,
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
      ),
    );
  }
}

Color checkColor(int index) {
  switch (index) {
    case 0:
      return const Color(0xFFE2BDE7);
    case 1:
      return const Color(0xFFFFCC80);
    case 2:
      return const Color(0xFFB0DCDA);
    case 3:
      return const Color(0xFFFABBD0);
    case 4:
      return const Color(0xFFC5CAE8);
    case 5:
      return const Color(0xFFABD9F0);
    case 6:
      return const Color(0xFFFFCC80);
    case 7:
      return const Color(0xFFE2BDE7);
    case 8:
      return const Color(0xFFC5CAE8);
    case 9:
      return const Color(0xFFFFCC80);
    default:
      return AppColor.primaryColor;
  }
}
