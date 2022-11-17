import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UnderDevelopmentView extends StatelessWidget {
  const UnderDevelopmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAsset.image('img_under_development.png'),
            width: 250.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              'Fitur ini Sedang Dalam Proses Pengembangan',
              style: TextStyles.text.copyWith(fontSize: 16.w),
              textAlign: TextAlign.center,
            ),
          ),
          verticalSpace(Insets.med),
          ButtonPrimary(
            label: 'Kembali',
            width: 150.w,
            radius: 12.w,
            textStyle:
                TextStyles.title.copyWith(fontSize: 16.w, color: Colors.white),
            onTap: Get.back,
          ),
        ],
      ),
    );
  }
}
