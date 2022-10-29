import 'package:dispusip/app/modules/book_detail/components/book_detail_desc.dart';
import 'package:dispusip/app/modules/book_detail/components/book_detail_header_content.dart';
import 'package:dispusip/app/modules/book_detail/controllers/book_detail_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class BookDetailView extends GetView<BookDetailController> {
  const BookDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: controller.isLoading.value
            ? const SizedBox()
            : Container(
                width: double.infinity,
                height: Get.width / 4,
                color: Colors.white.withOpacity(0.5),
                padding:
                    EdgeInsets.symmetric(vertical: 30.w, horizontal: 110.w),
                child: CardApp(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  radius: 12.w,
                  color: AppColor.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox.square(
                        dimension: 18.w,
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
                    expandedHeight: 480.w,
                    toolbarHeight: 347.w,
                    pinned: true,
                    floating: true,
                    automaticallyImplyLeading: false,
                    flexibleSpace: const BookDetailHeaderContent(),
                  ),
                  const SliverToBoxAdapter(child: BookDetailDesc())
                ],
              ),
      ),
    );
  }
}
