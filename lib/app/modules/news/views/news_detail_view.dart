import 'package:dispusip/app/modules/news/controllers/news_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/format_date_time.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/pages/page_default_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class NewsDetailView extends GetView<NewsController> {
  const NewsDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultThree(
      titlePage: 'Berita Dispusip',
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Insets.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(Insets.lg),
            Text(
              controller.news.value.title['rendered'],
              style: TextStyles.title.copyWith(fontSize: 22.w),
            ),
            verticalSpace(Insets.lg),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.network(
                        controller.newsAuthor.value.avatarUrls['96'],
                        width: 25.h,
                      ),
                      horizontalSpace(Insets.sm),
                      Text(
                        controller.newsAuthor.value.name,
                        style: TextStyles.text,
                      )
                    ],
                  ),
                ),
                Text(
                  FormatDateTime.news(controller.news.value.date),
                  style: TextStyles.desc,
                )
              ],
            ),
            verticalSpace(Insets.sm),
            SizedBox(
              width: Get.width,
              height: 197.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.w),
                child: Image.network(
                  controller.newsMedia.value.guid['rendered'],
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Html(
              data: controller.news.value.content['rendered'],
              style: {
                'body': Style(
                  fontSize: FontSize(16.w),
                  color: AppColor.textColor,
                ),
              },
            ),
            verticalSpace(Insets.sm),
            ButtonPrimary(
              onTap: () {
                Share.share(controller.news.value.link);
              },
              label: 'Bagikan',
              width: 150.w,
              height: 35.w,
              textStyle: TextStyles.button.copyWith(
                fontSize: 16.w,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            verticalSpace(Insets.xl)
          ],
        ),
      ),
    );
  }
}
