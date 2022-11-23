import 'package:dispusip/app/modules/lare_osing/controllers/lare_osing_controller.dart';
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

class LareOsingView extends GetView<LareOsingController> {
  const LareOsingView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Lare Osing',
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
                  onTap: () => Get.toNamed(Routes.LARE_OSING_FORM),
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
          Image.asset(AppAsset.image('img_lare_osing.png')),
          verticalSpace(Insets.lg),
          Text('Apa itu Lare Osing ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          Text(
            'Layanan Referensi Online Singkat merupakan salah satu layanan Perpustakaan Umum Kabupaten Banyuwangi yang memberikan fasilitasi kepada masyarakat, mahasiswa, guru, dosen (pemustaka) yang sedang membutuhkan referensi berupa jurnal ilmiah baik dari dalam maupun luar negeri. Maksud diberikannya Layanan ini adalah memberikan pengetahuan yang lebih kepada Pemustaka dengan memberikan panduan pencarian informasi secara online dari sumber-sumber tertentu yang menyediakan koleksi digital berbentuk jurnal ilmiah.',
            style: TextStyles.text,
          ),
          verticalSpace(Insets.lg),
          Text('Tujuan Lare Osing ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          const ItemRowDetail(
            title: '1.',
            desc:
                'Memudahkan Pemustaka untuk memperoleh informasi jurnal ilmiah baik dari dalam maupun luar negeri.',
          ),
          const ItemRowDetail(
            title: '2.',
            desc:
                'Memudahkan pemustaka untuk mengakses jurnal dari sumber yang terpercaya secara gratis.',
          ),
          verticalSpace(Insets.lg),
          Text('Jenis Layanan Lare Osing ?', style: TextStyles.title),
          verticalSpace(Insets.sm),
          const ItemRowDetail(
            isNumbering: false,
            desc: 'Memberikan Panduan Cara Mengakses Informasi Secara Online;',
          ),
          const ItemRowDetail(
            isNumbering: false,
            desc:
                'Memberikan Panduan Cara Mengunduh Jurnal Karya Ilmiah Baik dari Dalam dan Luar Negeri;',
          ),
          const ItemRowDetail(
            isNumbering: false,
            desc: 'Memberikan Panduan Cara Memperoleh Daftar Pustaka;',
          ),
          const ItemRowDetail(
            isNumbering: false,
            desc:
                'Memberikan Panduan Penerjemah Jurnal Bahasa Asing ke Bahasa Indonesia;',
          ),
        ],
      ),
    );
  }
}
