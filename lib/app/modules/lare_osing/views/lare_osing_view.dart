import 'package:dispusip/app/modules/lare_osing/controllers/lare_osing_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LareOsingView extends GetView<LareOsingController> {
  const LareOsingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Text(
            'Lare Osing',
            style: TextStyles.title.copyWith(fontSize: 16.w),
          ),
        ),
        leading: IconButton(
          onPressed: Get.back,
          icon:
              Icon(Icons.arrow_back_ios, size: 20.w, color: AppColor.textColor),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        shadowColor: AppColor.grey.withOpacity(0.5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(Insets.lg),
              Image.asset(AppAsset.image('lare_osing.png')),
              verticalSpace(Insets.med),
              Text(
                'Apa Itu Lare Osing ?',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.sm),
              Text(
                'Layanan Referensi Online Singkat merupakan salah satu layanan Perpustakaan Umum Kabupaten Banyuwangi yang memberikan fasilitasi kepada masyarakat, mahasiswa, guru, dosen (pemustaka) yang sedang membutuhkan referensi berupa jurnal ilmiah baik dari dalam maupun luar negeri. Maksud diberikannya Layanan ini adalah memberikan pengetahuan yang lebih kepada Pemustaka dengan memberikan panduan pencarian informasi secara online dari sumber-sumber tertentu yang menyediakan koleksi digital berbentuk jurnal ilmiah.',
                style: TextStyles.desc,
              ),
              verticalSpace(Insets.lg),
              Text(
                'Tujuan Lare Osing ?',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.lg),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1.',
                    style: TextStyles.desc,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: Text(
                      'Memudahkan Pemustaka untuk memperoleh informasi jurnal ilmiah baik dari dalam maupun luar negeri.',
                      style: TextStyles.desc,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2.',
                    style: TextStyles.desc,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      'Memudahkan Pemustaka untuk mengakses jurnal dari sumber yang terpercaya secara gratis.',
                      style: TextStyles.desc,
                    ),
                  ),
                ],
              ),
              verticalSpace(Insets.lg),
              Text(
                'Jenis Layanan Lare Osing',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.med),
              const Listjenis(
                title:
                    'Memberikan Panduan Cara Mengakses Informasi Secara Online.',
              ),
              const Listjenis(
                title:
                    'Memberikan Panduan Cara Mengunduh Jurnal Karya Ilmiah Baik dari Dalam dan Luar Negri.',
              ),
              const Listjenis(
                title: 'Memberikan Panduan Cara Memperoleh Daftar Pustaka.',
              ),
              const Listjenis(
                title:
                    'Memberikan Panduan Penerjemah Jurnal Bahasa Asing ke Bahasa Indonesia.',
              ),
              verticalSpace(Insets.lg),
            ],
          ),
        ),
      ),
    );
  }
}

class Listjenis extends StatelessWidget {
  const Listjenis({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '\u2022',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyles.desc,
          ),
        ),
      ],
    );
  }
}
