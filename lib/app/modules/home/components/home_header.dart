import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeHeader extends GetView<HomeController> {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        children: [
          verticalSpace(35.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppAsset.logo('logo_dispusip_white2.png'),
                height: 35.w,
              ),
              InkWell(
                onTap: () => Get.toNamed(Routes.NOTIFICATION),
                child: SizedBox.square(
                  dimension: 40.w,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox.square(
                        dimension: 22.w,
                        child:
                            Image.asset(AppAsset.icon('ic_notification.png')),
                      ),
                      Positioned(
                        right: 5.w,
                        bottom: 22.w,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.red,
                          ),
                          padding: EdgeInsets.all(2.w),
                          child: Text(
                            '99+',
                            style: TextStyles.text
                                .copyWith(color: Colors.white, fontSize: 7.w),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          verticalSpace(Insets.med),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    controller.navigation(1);
                  },
                  child: CardApp(
                    padding: EdgeInsets.all(Insets.med),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cari buku pada OPAC......',
                          style: TextStyles.text
                              .copyWith(color: AppColor.darkGrey),
                        ),
                        SizedBox.square(
                          dimension: 20.w,
                          child: Image.asset(AppAsset.icon('ic_search.png')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              horizontalSpace(Insets.med),
              SizedBox.square(
                dimension: 24.w,
                child: Image.asset(AppAsset.icon('ic_filter.png')),
              )
            ],
          ),
          verticalSpace(20.w),
        ],
      ),
    );
  }
}
