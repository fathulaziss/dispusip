import 'package:dispusip/app/models/book_model.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/cards/card_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpacCardItem extends StatelessWidget {
  const OpacCardItem({
    Key? key,
    required this.data,
    this.isAssetImage = true,
    required this.onTap,
  }) : super(key: key);

  final BookModel data;
  final bool isAssetImage;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CardApp(
        margin: EdgeInsets.fromLTRB(Insets.med, 0, Insets.med, Insets.lg),
        padding: EdgeInsets.all(Insets.sm),
        radius: 12.w,
        isShowShadows: true,
        shadows: Shadows.universal,
        child: Row(
          children: [
            CardBook(image: data.photos, isAssetImage: isAssetImage),
            horizontalSpace(Insets.lg),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style:
                        TextStyles.desc.copyWith(fontWeight: FontWeight.w600),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(Insets.xs),
                  Text(
                    data.author,
                    style: TextStyles.desc.copyWith(color: AppColor.darkGrey),
                  ),
                  verticalSpace(Insets.med),
                  if (data.subject.isNotEmpty)
                    CardApp(
                      isOutlined: true,
                      outlineColor: AppColor.primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: Insets.xs),
                      width: data.subject.length + 90.w,
                      height: 20.w,
                      constraints: BoxConstraints(minHeight: 20.w),
                      radius: 20.w,
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
      ),
    );
  }
}
