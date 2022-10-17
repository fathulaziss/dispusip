import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeBookCategory extends GetView<HomeController> {
  const HomeBookCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.w, right: 6.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cari buku dari Kategori', style: TextStyles.title),
          verticalSpace(10.h),
          SizedBox(
            width: Get.width,
            height: 60.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: controller.listBookCategory.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CardApp(
                  margin: EdgeInsets.only(
                    right: index != controller.listBookCategory.length
                        ? 14.w
                        : 8.w,
                  ),
                  width: 180.w,
                  color: checkColor(index),
                  padding: EdgeInsets.all(Insets.sm),
                  child: Row(
                    children: [
                      SizedBox.square(
                        dimension: 50.w,
                        child: Image.asset(
                          AppAsset.icon(
                            controller.listBookCategory[index].image,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          controller.listBookCategory[index].label,
                          style: TextStyles.text.copyWith(fontSize: 10.w),
                        ),
                      ),
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
