import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/cards/card_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryCardItem extends StatelessWidget {
  const HistoryCardItem({
    Key? key,
    required this.author,
    required this.title,
    required this.isDone,
  }) : super(key: key);

  final String title;
  final String author;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return CardApp(
      width: double.infinity,
      isOutlined: true,
      outlineColor: AppColor.grey,
      borderWidth: 1.5,
      radius: 15.w,
      isShowShadows: true,
      shadows: Shadows.universal2,
      child: Row(
        children: [
          const CardBook(),
          horizontalSpace(Insets.med),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.text.copyWith(fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(Insets.xs),
                Text(
                  author,
                  style: TextStyles.text.copyWith(color: AppColor.darkGrey),
                ),
                verticalSpace(Insets.sm),
                if (isDone)
                  Row(
                    children: [
                      SizedBox.square(
                        dimension: 18.w,
                        child:
                            Image.asset(AppAsset.icon('ic_check_circle.png')),
                      ),
                      horizontalSpace(Insets.sm),
                      Text(
                        'Dikembalikan Pada : 21/02/2022',
                        style: TextStyles.desc
                            .copyWith(color: const Color(0xFF269200)),
                      ),
                    ],
                  )
                else
                  Row(
                    children: [
                      SizedBox.square(
                        dimension: 18.w,
                        child: Image.asset(AppAsset.icon('ic_time_red.png')),
                      ),
                      horizontalSpace(Insets.sm),
                      Text(
                        'Tenggat : 21/02/2022',
                        style: TextStyles.desc
                            .copyWith(color: const Color(0xFFFF4E4E)),
                      ),
                    ],
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
