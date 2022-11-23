import 'package:dispusip/app/modules/klik/controllers/klik_controller.dart';
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

class KlikView extends GetView<KlikController> {
  const KlikView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'KliK',
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
                    'Tanya Pustakawan?',
                    style: TextStyles.title.copyWith(fontSize: 16.w),
                  ),
                ),
                ButtonPrimary(
                  onTap: () => Get.toNamed(Routes.KLIK_FORM),
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
          Text('Apa itu KliK ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          Text(
            'KliK adalah Akronim dari Klinik Kepustakawanan yang merupakan ruang berbagi pengetahuan antara Pustakawan dan Pemustaka dalam kegiatan pengelolaan perpustakaan, pelayanan perpustakaan dan pengembangan sistem kepustakawanan.',
            style: TextStyles.text,
          ),
          verticalSpace(Insets.lg),
          Text('Tujuan KliK ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          const ItemRowDetail(
            title: '1.',
            desc:
                'Memudahkan Pemustaka mempermudah informasi tentang Perpustakaan.',
          ),
          const ItemRowDetail(
            title: '2.',
            desc:
                'Memudahkan akses bagi pengelola perpustakaan yang ada di Kabupaten Banyuwangi untuk memperoleh informasi Kepustakawanan.',
          ),
          verticalSpace(Insets.lg),
          Image.asset(AppAsset.image('img_klik.png'), width: Get.width),
          verticalSpace(Insets.lg),
          Text(
            'Belajar Tentang Perpustakaan Dimanapun & Kapanpun',
            style: TextStyles.title,
          ),
          verticalSpace(Insets.sm),
          Text(
            'Klinik Kepustakawanan ini dimaksudkan untuk menyediakan ruang berbagi pengetahuan baik secara online maupun offline oleh Pustakawan pada Dinas Perpustakaan dan Kearsipan Kabupaten Banyuwangi kepada Pemustaka maupun sebaliknya.',
            style: TextStyles.text,
          ),
          verticalSpace(Insets.lg),
          Text('Layanan KliK', style: TextStyles.title),
          verticalSpace(Insets.sm),
          const ItemRowDetail(
            title: '1.',
            desc: 'Bimbingan Literasi Informasi.',
          ),
          const ItemRowDetail(
            title: '2.',
            desc: 'Bimbingan Pengelolaan Bahan Pustaka.',
          ),
          const ItemRowDetail(
            title: '3.',
            desc: 'Bimbingan Otomasi Perpustakaan.',
          ),
        ],
      ),
    );
  }
}
