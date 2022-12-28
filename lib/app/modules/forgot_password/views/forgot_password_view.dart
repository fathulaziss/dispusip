import 'package:dispusip/app/modules/forgot_password/controllers/forgot_password_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 12, 24.w, 24.h),
          child: Text(
            'Dinas Perpustakaan dan Kearsipan Kabupaten Banyuwangi',
            style: TextStyles.desc.copyWith(color: AppColor.darkGrey),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(Insets.xxl),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: Insets.xxl),
                  child: Image.asset(
                    AppAsset.logo('logo_dispusip_black.png'),
                    height: 50.h,
                  ),
                ),
                Image.asset(
                  AppAsset.image('img_forgot_password.png'),
                  height: 170.h,
                ),
                verticalSpace(40.h),
                Text(
                  'Lupa Password ?',
                  style: TextStyles.title,
                ),
                verticalSpace(40.h),
                Text(
                  'Silakan Masukkan Alamat Email Anda\nUntuk Menerima Kode Verifikasi',
                  style: TextStyles.text,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(40.h),
                InputEmail(
                  hint: 'Enter Email',
                  controller: controller.cEmail,
                  value: controller.setEmail,
                  validation: (value) => true,
                  margin: EdgeInsets.only(bottom: Insets.lg),
                ),
                ButtonPrimary(
                  onTap: controller.submit,
                  label: 'KIRIM KODE VERIFIKASI',
                  enabled: controller.isValidEmail.value,
                  isLoading: controller.isLoading.value,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
