import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
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
            if (controller.isLoadingBookCategory.value)
              SizedBox(
                width: Get.width,
                height: 45.w,
                child: ListView.builder(
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
                ),
              )
            else
              SizedBox(
                width: Get.width,
                height: 45.w,
                child: controller.listBookCategory.isNotEmpty
                    ? ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: controller.listBookCategory.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => Get.toNamed(
                              Routes.BOOK_CATEGORY,
                              arguments: {
                                'query':
                                    controller.listBookCategory[index].query
                              },
                            ),
                            child: CardApp(
                              margin: EdgeInsets.only(
                                right:
                                    index != controller.listBookCategory.length
                                        ? 14.w
                                        : 0,
                              ),
                              width: 180.w,
                              color: Color(
                                controller.listBookCategory[index].color,
                              ),
                              padding: EdgeInsets.all(Insets.sm),
                              child: Row(
                                children: [
                                  SizedBox.square(
                                    dimension: 50.w,
                                    child: Image.asset(
                                      AppAsset.icon(
                                        controller.listBookCategory[index].icon,
                                      ),
                                    ),
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
