import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/others/shimmer_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeBookCategory extends GetView<HomeController> {
  const HomeBookCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cari buku dari Kategori',
              style: TextStyles.title.copyWith(fontSize: 14.w),
            ),
            verticalSpace(Insets.sm),
            SizedBox(
              width: Get.width,
              height: 45.w,
              child: controller.isLoadingBookCategory.value
                  ? ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ShimmerIndicator(
                          margin: EdgeInsets.only(
                            right: index != 3 ? 14.w : 0,
                          ),
                          width: 180.w,
                          height: 45.w,
                          radius: 10.w,
                        );
                      },
                    )
                  : ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: controller.listBookCategory.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return controller.listBookCategory.isNotEmpty
                            ? CardApp(
                                margin: EdgeInsets.only(
                                  right: index !=
                                          controller.listBookCategory.length
                                      ? 14.w
                                      : 0,
                                ),
                                width: 180.w,
                                color: checkColor(index),
                                padding: EdgeInsets.all(Insets.sm),
                                child: Row(
                                  children: [
                                    SizedBox.square(
                                      dimension: 50.w,
                                      child: Image.asset(checkIcon(index)),
                                    ),
                                    Expanded(
                                      child: Text(
                                        controller.listBookCategory[index].name,
                                        style: TextStyles.text
                                            .copyWith(fontSize: 10.w),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Center(
                                child: Text(
                                  'Tidak Ada Data',
                                  style: TextStyles.text,
                                ),
                              );
                      },
                    ),
            ),
            verticalSpace(Insets.lg),
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

String checkIcon(int index) {
  switch (index) {
    case 0:
      return AppAsset.icon('ic_category1.png');
    case 1:
      return AppAsset.icon('ic_category2.png');
    case 2:
      return AppAsset.icon('ic_category3.png');
    case 3:
      return AppAsset.icon('ic_category4.png');
    case 4:
      return AppAsset.icon('ic_category5.png');
    case 5:
      return AppAsset.icon('ic_category6.png');
    case 6:
      return AppAsset.icon('ic_category7.png');
    case 7:
      return AppAsset.icon('ic_category8.png');
    case 8:
      return AppAsset.icon('ic_category9.png');
    case 9:
      return AppAsset.icon('ic_category10.png');
    default:
      return AppAsset.icon('ic_category1.png');
  }
}
