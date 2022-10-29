import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardBook extends StatelessWidget {
  const CardBook({
    Key? key,
    this.image = '',
    this.isAssetImage = true,
  }) : super(key: key);

  final String image;
  final bool isAssetImage;

  @override
  Widget build(BuildContext context) {
    return (image.isNotEmpty)
        ? CardApp(
            width: 70.w,
            height: 100.w,
            color: AppColor.grey,
            padding: EdgeInsets.zero,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.w),
              child: isAssetImage
                  ? Image.asset(AppAsset.image(image), fit: BoxFit.cover)
                  : Image.network(image, fit: BoxFit.cover),
            ),
          )
        : CardApp(
            width: 70.w,
            height: 100.w,
            color: AppColor.grey,
            padding: EdgeInsets.symmetric(horizontal: Insets.sm),
            child: Image.asset(
              AppAsset.logo('logo_dispusip_black.png'),
              height: Insets.lg,
            ),
          );
  }
}
