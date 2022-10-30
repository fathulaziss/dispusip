import 'package:dispusip/app/modules/book_detail/components/book_detail_button_top.dart';
import 'package:dispusip/app/modules/book_detail/controllers/book_detail_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookDetailHeaderTwo extends GetView<BookDetailController> {
  const BookDetailHeaderTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                verticalSpace(40.w),
                const BookDetailButtonTop(),
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
                  padding: EdgeInsets.symmetric(horizontal: Insets.med),
                  child: Text(
                    controller.data.value.title,
                    style: TextStyles.title.copyWith(
                      fontSize: 14.w,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(Insets.xs),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Insets.med),
                  child: Text(
                    controller.data.value.author,
                    style: TextStyles.desc.copyWith(color: Colors.white),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(Insets.lg),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Corners.xxlRadius,
                    topRight: Corners.xxlRadius,
                  ),
                  color: Colors.white,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CardApp(
                      width: 60.w,
                      height: 10.w,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(minHeight: 10.h),
                      color: const Color(0xFFD9D9D9),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
