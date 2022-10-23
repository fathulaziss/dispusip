import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardHeader extends GetView<DashboardController> {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Row(
          children: [
            // if (controller.cUserInfo.dataUser.value.photo.isNotEmpty)
            //   ClipRRect(
            //     borderRadius: BorderRadius.circular(50.w),
            //     child: Image.network(
            //       controller.cUserInfo.dataUser.value.photo,
            //       height: 50.w,
            //       fit: BoxFit.cover,
            //     ),
            //   )
            // else
            //   Container(
            //     width: 50.w,
            //     height: 50.w,
            //     decoration: const BoxDecoration(
            //       shape: BoxShape.circle,
            //       color: AppColor.grey,
            //     ),
            //     child: Icon(
            //       Icons.person_rounded,
            //       size: 40.w,
            //       color: AppColor.blue,
            //     ),
            //   ),
            Container(
              width: 50.w,
              height: 50.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.grey,
              ),
              child: Icon(
                Icons.person_rounded,
                size: 40.w,
                color: AppColor.blue,
              ),
            ),
            horizontalSpace(Insets.med),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 50.h,
                child: Align(
                  child: Text(
                    'Hai, ${controller.cUserInfo.dataUser.value.namaLengkap}',
                    style: TextStyles.title
                        .copyWith(fontSize: 16.w, color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            horizontalSpace(Insets.med),
            InkWell(
              onTap: () => Get.toNamed(Routes.UNDER_DEVELOPMENT),
              child: Container(
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                ),
                child: SizedBox.square(
                  dimension: 50.w,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox.square(
                        dimension: 24.w,
                        child:
                            Image.asset(AppAsset.icon('ic_notification.png')),
                      ),
                      Positioned(
                        right: 6,
                        bottom: 27,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.red,
                          ),
                          padding: EdgeInsets.all(2.w),
                          child: Text(
                            '99+',
                            style: TextStyles.text
                                .copyWith(color: Colors.white, fontSize: 8.w),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
