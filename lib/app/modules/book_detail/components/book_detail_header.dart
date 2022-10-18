import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookDetailHeader extends StatelessWidget {
  const BookDetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: Get.back,
            child: SizedBox.square(
              dimension: 40.w,
              child: Image.asset(AppAsset.icon('ic_back.png')),
            ),
          ),
          SizedBox.square(
            dimension: 40.w,
            child: Image.asset(
              AppAsset.icon('ic_cart_circle.png'),
            ),
          )
        ],
      ),
    );
  }
}
