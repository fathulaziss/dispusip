import 'package:dispusip/app/modules/book_detail2/components/book_detail2_desc.dart';
import 'package:dispusip/app/modules/book_detail2/components/book_detail2_header_content.dart';
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
            ? LoadingIndicatorBounce(size: 25.w)
            : CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: AppColor.primaryColor,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    expandedHeight: 475.w,
                    toolbarHeight: 342.w,
                    pinned: true,
                    floating: true,
                    automaticallyImplyLeading: false,
                    flexibleSpace: const BookDetail2HeaderContent(),
                  ),
                  // SliverAppBar(
                  //   backgroundColor: AppColor.primaryColor,
                  //   shadowColor: Colors.transparent,
                  //   elevation: 0,
                  //   expandedHeight: 465.w,
                  //   pinned: true,
                  //   floating: true,
                  //   automaticallyImplyLeading: false,
                  //   flexibleSpace: const BookDetail2HeaderOne(),
                  // )
                  // SliverAppBar(
                  //   backgroundColor: AppColor.primaryColor,
                  //   shadowColor: Colors.transparent,
                  //   elevation: 0,
                  //   expandedHeight: 332.w,
                  //   pinned: true,
                  //   floating: true,
                  //   automaticallyImplyLeading: false,
                  //   flexibleSpace: const BookDetail2HeaderTwo(),
                  // )
                  const SliverToBoxAdapter(child: BookDetail2Desc())
                ],
              ),
      ),
    );
  }
}
