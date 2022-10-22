import 'package:dispusip/app/models/news_author_model.dart';
import 'package:dispusip/app/models/news_media_model.dart';
import 'package:dispusip/app/models/news_model.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/format_date_time.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({
    Key? key,
    required this.data,
    required this.dataMedia,
    required this.dataAuthor,
    required this.margin,
  }) : super(key: key);

  final NewsModel data;
  final NewsMediaModel dataMedia;
  final NewsAuthorModel dataAuthor;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          Routes.NEWS_DETAIL,
          arguments: {
            'news': data,
            'news_media': dataMedia,
            'news_author': dataAuthor
          },
        );
      },
      child: CardApp(
        isShowShadows: true,
        margin: margin,
        width: 304.w,
        padding: EdgeInsets.zero,
        radius: 10.w,
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.w),
                  child: Image.network(
                    dataMedia.guid['rendered'],
                    width: 304.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title['rendered'],
                      style:
                          TextStyles.desc.copyWith(fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(Insets.xs),
                    Text(
                      FormatDateTime.news(data.date),
                      style: TextStyles.text
                          .copyWith(fontSize: 10.w, color: AppColor.darkGrey),
                    )
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
