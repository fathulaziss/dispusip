import 'package:dispusip/app/modules/rest_area/controllers/rest_area_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RestAreaView extends GetView<RestAreaController> {
  const RestAreaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Text(
            'Rest Area',
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
                'Apa itu Rest Area ?',
                style: TextStyles.title,
              ),
              verticalSpace(Insets.lg),
              Text(
                'Rest Area adalah Akronim Restorasi Arsip Desa yang merupakan layanan penyelamatan arsip aset desa dengan cara melapisi arsip dengan kertas tisu jepang sehingga dapat mengurangi resiko kerusakan arsip.',
                style: TextStyles.desc,
              ),
              verticalSpace(Insets.lg),
              Image.asset(
                AppAsset.image('restarea.png'),
              ),
              verticalSpace(Insets.lg),
              Text(
                'Tujuan Rest Area ?',
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
                      'Mewujudkan Pelestarian dan penyelamatan arsip desa.',
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
                      'Mewujudkan penyediaan informasi arsip yang autentik, lengkap dan terpercaya.',
                      style: TextStyles.desc,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
