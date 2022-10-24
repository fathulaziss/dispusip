import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountHeader extends GetView<DashboardController> {
  const AccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        color: AppColor.primaryColor,
        padding: EdgeInsets.fromLTRB(24.w, 0, 20.w, 40.h),
        child: Column(
          children: [
            verticalSpace(36.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAsset.logo('logo_dispusip_white2.png'),
                  height: 40.h,
                ),
                TextButton.icon(
                  onPressed: () => Get.toNamed(Routes.EDIT_PROFILE),
                  icon: SizedBox.square(
                    dimension: 18.w,
                    child: Image.asset(AppAsset.icon('ic_edit.png')),
                  ),
                  label: Text(
                    'Edit',
                    style: TextStyles.title
                        .copyWith(fontSize: 14.w, color: Colors.white),
                  ),
                ),
              ],
            ),
            verticalSpace(Insets.lg),
            Row(
              children: [
                Container(
                  width: 70.w,
                  height: 70.w,
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
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(50.w),
                //   child: Image.asset(
                //     AppAsset.image('img_profile.png'),
                //     width: 90.w,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                horizontalSpace(Insets.med),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.cUserInfo.dataUser.value.namaLengkap,
                        style: TextStyles.title
                            .copyWith(color: Colors.white, fontSize: 14.w),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(Insets.xs),
                      Text(
                        controller.cUserInfo.dataUser.value.nomorHP.isNotEmpty
                            ? '+62${controller.cUserInfo.dataUser.value.nomorHP}'
                            : '',
                        style: TextStyles.desc.copyWith(color: Colors.white),
                      ),
                      verticalSpace(Insets.xs),
                      Text(
                        controller.cUserInfo.dataUser.value.email,
                        style: TextStyles.desc.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
