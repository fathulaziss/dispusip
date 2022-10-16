import 'package:dispusip/app/modules/login/controllers/login_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_password.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageDefaultOne(
        titlePage: 'Login Anggota',
        isShowFooter: true,
        resizeToAvoidBottomInset: true,
        child: Column(
          children: [
            InputPrimary(
              hint: 'No. Anggota / Email',
              controller: controller.cUsername,
              onChanged: controller.setUsername,
              validation: (value) => value.isNotEmpty,
              margin: EdgeInsets.only(bottom: 15.h),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                child: Icon(
                  Icons.email_outlined,
                  size: 18.w,
                  color: AppColor.darkGrey,
                ),
              ),
            ),
            InputPassword(
              controller: controller.cPassword,
              value: controller.setPassword,
              validation: (value) => value.isNotEmpty,
              validationText: '',
              margin: EdgeInsets.only(bottom: Insets.sm),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                child: Icon(
                  Icons.lock_outline,
                  size: 18.w,
                  color: AppColor.darkGrey,
                ),
              ),
            ),
            verticalSpace(Insets.lg),
            ButtonPrimary(
              onTap: () {},
              label: 'LOGIN',
              enabled: controller.isValidForm.value,
              isLoading: controller.isLoading.value,
            ),
            verticalSpace(Insets.lg),
            ButtonPrimary(
              onTap: () => Get.toNamed(Routes.REGISTER),
              label: 'DAFTAR ANGGOTA',
              isOutline: true,
              color: Colors.transparent,
              outlineColor: AppColor.primaryColor,
              textColor: AppColor.primaryColor,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'LUPA PASSWORD',
                style: TextStyles.text.copyWith(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF7A7A7A),
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
