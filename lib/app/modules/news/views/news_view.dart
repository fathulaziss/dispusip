import 'package:dispusip/app/modules/news/components/news_card.dart';
import 'package:dispusip/app/modules/news/controllers/news_controller.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:dispusip/widgets/pages/page_default_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageDefaultThree(
        titlePage: 'Semua Berita Dispusip',
        isScrollable: false,
        child: SizedBox(
          width: double.infinity,
          child: controller.cHome.isLoadingNews.value
              ? LoadingIndicatorBounce(size: 25.w)
              : ListView.builder(
                  padding: EdgeInsets.only(top: 10.h),
                  itemCount: controller.cHome.listNews.length,
                  itemBuilder: (context, index) {
                    return NewsCard(
                      data: controller.cHome.listNews[index],
                      dataMedia: controller.cHome.listNewsMedia[index],
                      dataAuthor: controller.cHome.listNewsAuthor[index],
                    );
                  },
                ),
        ),
      ),
    );
  }
}
