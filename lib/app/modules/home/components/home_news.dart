import 'package:dispusip/app/modules/home/components/home_news_card.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/others/shimmer_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeNews extends GetView<HomeController> {
  const HomeNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Berita Dispusip Banyuwangi',
                  style: TextStyles.title.copyWith(fontSize: 14.w),
                ),
                TextButton(
                  onPressed: () => Get.toNamed(Routes.NEWS),
                  child: Text(
                    'Lihat Semua',
                    style: TextStyles.title.copyWith(
                      fontSize: 12.w,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            if (controller.isLoadingNews.value)
              SizedBox(
                width: Get.width,
                height: 200.w,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ShimmerIndicator(
                      width: 304.w,
                      height: 200.w,
                      radius: 10.w,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.only(
                        right: index != 3 ? 14.w : 0,
                        bottom: 5.h,
                        top: 5.h,
                        left: index != 0 ? 0 : 5.w,
                      ),
                    );
                  },
                ),
              )
            else
              SizedBox(
                width: Get.width,
                height: 200.w,
                child: controller.listNews.isNotEmpty
                    ? ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: controller.listNews.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return HomeNewsCard(
                            data: controller.listNews[index],
                            dataMedia: controller.listNewsMedia[index],
                            dataAuthor: controller.listNewsAuthor[index],
                            margin: EdgeInsets.only(
                              right: index != controller.listNews.length
                                  ? 14.w
                                  : 0,
                              bottom: 5.h,
                              top: 5.h,
                              left: index != 0 ? 0 : 5.w,
                            ),
                          );
                        },
                      )
                    : Center(
                        child: Text('Tidak Ada Data', style: TextStyles.text),
                      ),
              ),
            verticalSpace(Insets.lg),
          ],
        ),
      ),
    );
  }
}
