import 'package:dispusip/app/modules/about_app/controllers/about_app_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AboutAppView extends GetView<AboutAppController> {
  const AboutAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Tentang Aplikasi',
      isScrollable: false,
      child: Column(
        children: [
          verticalSpace(50.h),
          Image.asset(
            AppAsset.logo('logo_dispusip_black.png'),
            width: 240.w,
            height: 72.h,
          ),
          verticalSpace(45.h),
          Text(
            'Dispusip Banyuwangi Mobile',
            style: TextStyles.title.copyWith(fontSize: 21.w),
            textAlign: TextAlign.center,
          ),
          verticalSpace(Insets.lg),
          Text(
            'Versi 1.2.5',
            style: TextStyles.text.copyWith(fontSize: 16.w),
            textAlign: TextAlign.center,
          ),
          verticalSpace(45.h),
          Text(
            '©2022\nDinas Perpustakaan dan  Kearsipan\nKabupaten Banyuwangi',
            style: TextStyles.text.copyWith(fontSize: 16.w),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
