import 'package:dispusip/app/models/news_author_model.dart';
import 'package:dispusip/app/models/news_media_model.dart';
import 'package:dispusip/app/models/news_model.dart';
import 'package:dispusip/app/modules/news/controllers/news_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/utils/format_date_time.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class NewsCard extends GetView<NewsController> {
  const NewsCard({
    Key? key,
    required this.data,
    required this.dataMedia,
    required this.dataAuthor,
  }) : super(key: key);

  final NewsModel data;
  final NewsMediaModel dataMedia;
  final NewsAuthorModel dataAuthor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.setNewsDetail(
          dataNews: data,
          dataNewsMedia: dataMedia,
          dataNewsAuthor: dataAuthor,
        );
        Get.toNamed(Routes.NEWS_DETAIL);
      },
      child: CardApp(
        color: Colors.white,
        isShowShadows: true,
        shadows: Shadows.universal,
        isOutlined: true,
        outlineColor: AppColor.grey.withOpacity(0.5),
        margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        padding: EdgeInsets.all(10.w),
        radius: 12.w,
        child: Row(
          children: [
            CardApp(
              width: 100.w,
              height: 100.w,
              padding: EdgeInsets.zero,
              color: AppColor.grey,
              radius: 12.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.w),
                child:
                    Image.network(dataMedia.guid['rendered'], fit: BoxFit.fill),
              ),
            ),
            horizontalSpace(Insets.lg),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title['rendered'],
                    style: TextStyles.title.copyWith(fontSize: 12.w),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(Insets.xs),
                  Text(
                    AppUtils.removeTagHtml(data.content['rendered']),
                    style: TextStyles.text.copyWith(
                      fontSize: 10.w,
                      color: AppColor.darkGrey,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(Insets.sm),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${dataAuthor.name} - ${FormatDateTime.news(data.date)}',
                          style: TextStyles.text.copyWith(fontSize: 10.w),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Share.share(data.link);
                        },
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(minWidth: 14.w),
                        iconSize: 12.w,
                        icon: Image.asset(
                          AppAsset.icon('ic_share.png'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
