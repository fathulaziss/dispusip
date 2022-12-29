import 'package:dispusip/app/modules/klik/controllers/klik_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class KlikView extends GetView<KlikController> {
  const KlikView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Text(
            'Klik',
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
              Text(
                'Apa Itu Klik ?',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.lg),
              Text(
                'KliK adalah Akronim dari Klinik Kepustakawanan yang merupakan ruang berbagi pengetahuan antara Pustakawan dan Pemustaka dalam kegiatan pengelolaan perpustakaan, pelayanan perpustakaan dan pengembangan sistem kepustakawanan.',
                style: TextStyles.desc,
              ),
              verticalSpace(Insets.lg),
              Text(
                'Tujuan Klik ?',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.med),
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
                      'Memudahkan Pemustaka mempermudah informasi tentang Perpustakaan.',
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
                      'Memudahkan akses bagi pengelola perpustakaan yang ada di Kabupaten Banyuwangi untuk memperoleh informasi Kepustakawanan.',
                      style: TextStyles.desc,
                    ),
                  ),
                ],
              ),
              Image.asset(AppAsset.image('klik_img.png')),
              verticalSpace(Insets.lg),
              Text(
                'Belajar Tentang Perpustakaan Dimanapun & Kapanpun',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.lg),
              Text(
                'Klinik Kepustakawanan ini dimaksudkan untuk menyediakan ruang berbagi pengetahuan baik secara online maupun offline oleh Pustakawan pada Dinas Perpustakaan dan Kearsipan Kabupaten Banyuwangi kepada Pemustaka maupun sebaliknya.',
                style: TextStyles.desc,
              ),
              verticalSpace(Insets.lg),
              Text(
                'Layanan Klik',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.med),
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
                      'Bimbingan Literasi Informasi',
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
                      'Bimbingan Pengelolaan Bahan Pustaka',
                      style: TextStyles.desc,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3.',
                    style: TextStyles.desc,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      'Bimbingan Otomasi Perpustakaan',
                      style: TextStyles.desc,
                    ),
                  ),
                ],
              ),
              verticalSpace(Insets.lg),
            ],
          ),
        ),
      ),
    );
  }
}
