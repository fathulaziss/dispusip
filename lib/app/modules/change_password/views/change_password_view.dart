import 'package:dispusip/app/modules/change_password/controllers/change_password_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_password.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Ubah Kata Sandi',
      isShowFooter: true,
      child: Column(
        children: [
          InputPassword(
            label: 'Kata Sandi Lama',
            hint: 'Kata Sandi Lama',
            controller: controller.cKataSandiLama,
            value: (value) {},
            validation: (value) => value.isNotEmpty,
            validationText: '',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPassword(
            label: 'Kata Sandi Baru',
            hint: 'Kata Sandi Baru',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPassword(
            label: 'Konfirmasi Kata Sandi Baru',
            hint: 'Konfirmasi Kata Sandi Baru',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(50.h),
          ButtonPrimary(label: 'SIMPAN', onTap: () {}),
        ],
      ),
    );
  }
}
