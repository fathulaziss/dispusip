import 'package:dispusip/app/models/book_model.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/cards/card_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OpacCardItem extends StatelessWidget {
  const OpacCardItem({
    Key? key,
    required this.data,
    this.isAssetImage = true,
  }) : super(key: key);

  final BookModel data;
  final bool isAssetImage;

  @override
  Widget build(BuildContext context) {
    return CardApp(
      margin: EdgeInsets.fromLTRB(Insets.med, 0, Insets.med, Insets.lg),
      padding: EdgeInsets.all(Insets.sm),
      isShowShadows: true,
      shadows: Shadows.universal,
      child: Row(
        children: [
          CardBook(image: data.image, isAssetImage: isAssetImage),
          horizontalSpace(Insets.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: TextStyles.text.copyWith(fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(Insets.xs),
                Text(
                  data.author,
                  style: TextStyles.desc.copyWith(color: AppColor.darkGrey),
                ),
                verticalSpace(Insets.med),
                CardApp(
                  isOutlined: true,
                  outlineColor: AppColor.primaryColor,
                  constraints: BoxConstraints(minHeight: 22.h),
                  radius: 20.w,
                  width: Get.width / 3.w,
                  padding: EdgeInsets.symmetric(horizontal: Insets.med),
                  child: Text(
                    data.subject.toUpperCase(),
                    style: TextStyles.desc,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
