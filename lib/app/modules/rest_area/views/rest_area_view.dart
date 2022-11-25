import 'package:dispusip/app/modules/rest_area/controllers/rest_area_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/others/item_row_detail.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class RestAreaView extends GetView<RestAreaController> {
  const RestAreaView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Rest Area',
      isShowButtonBottom: true,
      paddingButtonBottom: EdgeInsets.only(bottom: 16.w),
      padding: EdgeInsets.fromLTRB(16.w, 16.w, 16.w, 0),
      buttonBottom: Column(
        children: [
          const Divider(color: AppColor.greenAccent),
          verticalSpace(10.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Tanya Arsiparis?',
                    style: TextStyles.title.copyWith(fontSize: 16.w),
                  ),
                ),
                ButtonPrimary(
                  onTap: () => Get.toNamed(Routes.WARNA_PELANGI_FORM),
                  width: 120.w,
                  height: 30.w,
                  label: 'Isi Form',
                  textStyle: TextStyles.title
                      .copyWith(fontSize: 16.w, color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Apa itu Rest Area ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          Text(
            'Rest Area adalah Akronim Restorasi Arsip Desa yang merupakan layanan penyelamatan arsip aset desa dengan cara melapisi arsip dengan kertas tisu jepang sehingga dapat mengurangi resiko kerusakan arsip.',
            style: TextStyles.text,
          ),
          verticalSpace(Insets.lg),
          Image.asset(AppAsset.image('img_onboarding2.png'), width: Get.width),
          verticalSpace(Insets.lg),
          Text('Tujuan Rest Area ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          const ItemRowDetail(
            title: '1.',
            desc: 'Mewujudkan Pelestarian dan penyelamatan arsip desa.',
          ),
          const ItemRowDetail(
            title: '2.',
            desc:
                'Mewujudkan penyediaan informasi arsip yang autentik, lengkap dan terpercaya.',
          ),
        ],
      ),
    );
  }
}
