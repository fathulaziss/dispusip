import 'package:dispusip/app/modules/book_detail2/components/book_detail2_button_top.dart';
import 'package:dispusip/app/modules/book_detail2/components/book_detail2_card.dart';
import 'package:dispusip/app/modules/book_detail2/controllers/book_detail2_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookDetail2HeaderOne extends GetView<BookDetail2Controller> {
  const BookDetail2HeaderOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                verticalSpace(30.w),
                const BookDetail2ButtonTop(),
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
                  style: TextStyles.desc.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const BookDetail2Card(),
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
