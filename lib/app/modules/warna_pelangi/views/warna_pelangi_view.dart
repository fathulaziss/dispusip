import 'package:dispusip/app/modules/warna_pelangi/controllers/warna_pelangi_controller.dart';
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

class WarnaPelangiView extends GetView<WarnaPelangiController> {
  const WarnaPelangiView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Warna Pelangi',
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
          Text('Apa itu Warna Pelangi ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          Text(
            'Warna Pelangi adalah Akronim dari Wisata Arsip Anak Sekolah, Pelajar, Mahasiswa dan Masyarakat Banyuwangi. Layanan edukasi kearsipan bagi masyarakat, khususnya pelajar dan mahasiswa dalam mempelajari tentang pengelolaan arsip, dan mengetahui arsip-arsip yang disimpan di Depo.',
            style: TextStyles.text,
          ),
          verticalSpace(Insets.lg),
          Image.asset(
            AppAsset.image('img_warna_pelangi.png'),
            width: Get.width,
          ),
          verticalSpace(Insets.lg),
          Text('Tujuan Warna Pelangi ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          const ItemRowDetail(
            title: '1.',
            desc:
                'Meningkatkan mutu pelayanan kearsipan kepada seluruh masyarakat.',
          ),
          const ItemRowDetail(
            title: '2.',
            desc:
                'Meningkatkan kesadaran akan pentingnya arsip untuk dijaga dan diselamatkan.',
          ),
          const ItemRowDetail(
            title: '3.',
            desc:
                'Meningkatkan akses informasi arsip dan edukasi mengenai kearsipan bagi seluruh masyarakat.',
          ),
        ],
      ),
    );
  }
}
