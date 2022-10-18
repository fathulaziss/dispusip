import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeNews extends GetView<HomeController> {
  const HomeNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Berita Dispusip Banyuwangi', style: TextStyles.title),
          verticalSpace(10.h),
          SizedBox(
            width: Get.width,
            height: 230.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: controller.listNews.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CardApp(
                  isShowShadows: true,
                  margin: EdgeInsets.only(
                    right: index != controller.listNews.length ? 14.w : 0,
                    bottom: 5.h,
                    top: 5.h,
                    left: index != 0 ? 0 : 5.w,
                  ),
                  width: 304.w,
                  padding: EdgeInsets.zero,
                  radius: 10.w,
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Expanded(
                        child: CardApp(
                          width: 304.w,
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.zero,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.w),
                            child: Image.asset(
                              AppAsset.image(controller.listNews[index].image),
                              fit: BoxFit.cover,
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
                                '${controller.listNews[index].title}${controller.listNews[index].title}',
                                style: TextStyles.desc
                                    .copyWith(fontWeight: FontWeight.w600),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              verticalSpace(Insets.xs),
                              Text(
                                controller.listNews[index].dateTime,
                                style: TextStyles.text.copyWith(
                                  fontSize: 10.w,
                                  color: AppColor.darkGrey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          verticalSpace(30.h),
        ],
      ),
    );
  }
}
