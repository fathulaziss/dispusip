import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/utils/format_date_time.dart';
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
    required this.image,
    required this.date,
  }) : super(key: key);

  final String title;
  final String author;
  final bool isDone;
  final String image;
  final String date;

  @override
  Widget build(BuildContext context) {
    return CardApp(
      width: double.infinity,
      isOutlined: true,
      outlineColor: AppColor.grey,
      borderWidth: 0.5,
      radius: 15.w,
      isShowShadows: true,
      shadows: Shadows.universal2,
      margin: EdgeInsets.symmetric(vertical: Insets.sm),
      child: Row(
        children: [
          if (image.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(10.w),
              child: Image.network(
                image,
                fit: BoxFit.fill,
                width: 70.w,
                height: 100.w,
              ),
            )
          else
            const CardBook(),
          horizontalSpace(Insets.med),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyles.desc.copyWith(fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(Insets.xs),
                Text(
                  author,
                  style: TextStyles.desc.copyWith(color: AppColor.darkGrey),
                ),
                verticalSpace(Insets.sm),
                if (isDone)
                  Row(
                    children: [
                      SizedBox.square(
                        dimension: 14.w,
                        child:
                            Image.asset(AppAsset.icon('ic_check_circle.png')),
                      ),
                      horizontalSpace(Insets.xs),
                      Text(
                        'Dikembalikan Pada : ${FormatDateTime.history(date)}',
                        style: TextStyles.desc
                            .copyWith(color: const Color(0xFF269200)),
                      ),
                    ],
                  )
                else
                  Row(
                    children: [
                      SizedBox.square(
                        dimension: 14.w,
                        child: Image.asset(AppAsset.icon('ic_time_red.png')),
                      ),
                      horizontalSpace(Insets.sm),
                      Text(
                        'Tenggat : ${FormatDateTime.history(date)}',
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
