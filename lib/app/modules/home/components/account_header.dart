import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  dimension: 24.w,
                  child: Image.asset(AppAsset.icon('ic_edit.png')),
                ),
                label: Text(
                  'Edit',
                  style: TextStyles.title
                      .copyWith(fontSize: 16.w, color: Colors.white),
                ),
              ),
            ],
          ),
          verticalSpace(Insets.lg),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.w),
                child: Image.asset(
                  AppAsset.image('img_profile.png'),
                  width: 90.w,
                  fit: BoxFit.cover,
                ),
              ),
              horizontalSpace(Insets.med),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ramadian T Laksana',
                      style: TextStyles.title
                          .copyWith(color: Colors.white, fontSize: 16.w),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(Insets.xs),
                    Text(
                      '+62822-33000-884',
                      style: TextStyles.desc.copyWith(color: Colors.white),
                    ),
                    verticalSpace(Insets.xs),
                    Text(
                      'contact.katarama@gmail.com',
                      style: TextStyles.desc.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
