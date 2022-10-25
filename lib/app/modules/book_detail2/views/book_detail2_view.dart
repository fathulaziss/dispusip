import 'package:dispusip/app/modules/book_detail2/components/book_detail2_card.dart';
import 'package:dispusip/app/modules/book_detail2/components/book_detail2_desc.dart';
import 'package:dispusip/app/modules/book_detail2/components/book_detail2_header.dart';
import 'package:dispusip/app/modules/book_detail2/controllers/book_detail2_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookDetail2View extends GetView<BookDetail2Controller> {
  const BookDetail2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: double.infinity,
          height: Get.width / 4,
          color: Colors.white.withOpacity(0.5),
          child: CardApp(
            width: 200.w,
            margin: EdgeInsets.symmetric(vertical: 30.h, horizontal: 100.w),
            radius: 25.w,
            color: AppColor.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox.square(
                  dimension: 24.w,
                  child: Image.asset(AppAsset.icon('ic_cart.png')),
                ),
                Text(
                  'TERSEDIA OFFLINE',
                  style: TextStyles.title
                      .copyWith(color: Colors.white, fontSize: 12.w),
                )
              ],
            ),
          ),
        ),
        body: controller.isLoading.value
            ? const LoadingIndicatorBounce()
            : Stack(
                children: [
                  Container(
                    width: double.infinity,
                    color: AppColor.primaryColor,
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        expandedHeight: 490.h,
                        surfaceTintColor: Colors.transparent,
                        toolbarHeight: 0.h,
                        elevation: 0,
                        pinned: true,
                        floating: true,
                        leading: const SizedBox(),
                        flexibleSpace: FlexibleSpaceBar(
                          background: Container(
                            width: double.infinity,
                            color: AppColor.primaryColor,
                            child: Padding(
                              padding: EdgeInsets.only(top: 32.h),
                              child: Column(
                                children: [
                                  const BookDetail2Header(),
                                  verticalSpace(Insets.xs),
                                  if (controller.data.value.photos.isNotEmpty)
                                    Image.network(
                                      controller.data.value.photos,
                                      width: 100.w,
                                      fit: BoxFit.cover,
                                    )
                                  else
                                    Image.asset(
                                      AppAsset.image('img_book_default.png'),
                                      width: 100.w,
                                      fit: BoxFit.cover,
                                    ),
                                  verticalSpace(Insets.xs),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: Insets.lg,
                                    ),
                                    child: Text(
                                      controller.data.value.title,
                                      style: TextStyles.title.copyWith(
                                        fontSize: 14.w,
                                        color: Colors.white,
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  verticalSpace(Insets.xs),
                                  Text(
                                    controller.data.value.author,
                                    style: TextStyles.desc
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  const BookDetail2Card()
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(child: BookDetail2Desc()),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
