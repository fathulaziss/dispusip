import 'package:dispusip/app/modules/warna_pelangi/controllers/warna_pelangi_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WarnaPelangiView extends GetView<WarnaPelangiController> {
  const WarnaPelangiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Text(
            'Warna Pelangi',
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
                'Apa itu Warna Pelangi ?',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.lg),
              Text(
                'Warna Pelangi adalah Akronim dari Wisata Arsip Anak Sekolah, Pelajar, Mahasiswa dan Masyarakat Banyuwangi. Layanan edukasi kearsipan bagi masyarakat, khususnya pelajar dan mahasiswa dalam mempelajari tentang pengelolaan arsip, dan mengetahui arsip-arsip yang disimpan di Depo.',
                style: TextStyles.desc,
              ),
              verticalSpace(Insets.lg),
              Image.asset(
                AppAsset.image('warna_pelangi.png'),
              ),
              verticalSpace(Insets.lg),
              Text(
                'Tujuan Warna Pelangi ?',
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
                      'Meningkatkan mutu pelayanan kearsipan kepada seluruh masyarakat.',
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
                      'Meningkatkan kesadaran akan pentingnya arsip untuk dijaga dan diselamatkan.',
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
                      'Meningkatkan akses informasi arsip dan edukasi mengenai kearsipan bagi seluruh masyarakat.',
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
