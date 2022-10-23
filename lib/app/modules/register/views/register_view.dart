import 'package:dispusip/app/modules/register/components/register_birthday_dropdown.dart';
import 'package:dispusip/app/modules/register/components/register_gender_dropdown.dart';
import 'package:dispusip/app/modules/register/components/register_header_form.dart';
import 'package:dispusip/app/modules/register/components/register_type_id_dropdown.dart';
import 'package:dispusip/app/modules/register/controllers/register_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_email.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_password.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_one.dart';
import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageDefaultOne(
        titlePage: 'Daftar Anggota',
        isShowFooter: true,
        isShowButtonBottom: true,
        buttonBottom: ButtonPrimary(
          onTap: controller.register,
          label: 'DAFTAR ANGGOTA',
          enabled: controller.isValidForm.value,
          isLoading: controller.isLoading.value,
        ),
        child: Column(
          children: [
            const RegisterHeaderForm(label: 'Identitas'),
            InputPrimary(
              hint: 'Nama Lengkap',
              controller: controller.cFullName,
              onChanged: controller.setFullName,
              validation: (value) => true,
              margin: EdgeInsets.only(bottom: 15.h),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                child: Icon(
                  Icons.person_outline,
                  size: 18.w,
                  color: AppColor.darkGrey,
                ),
              ),
            ),
            const RegisterGenderDropdown(),
            InputPrimary(
              hint: 'Tempat Lahir',
              controller: controller.cBirthPlace,
              onChanged: controller.setBirthPlace,
              validation: (value) => true,
              margin: EdgeInsets.only(bottom: 15.h),
            ),
            const RegisterBirthdayDropdown(),
            const RegisterTypeIdDropdown(),
            InputPrimary(
              hint: 'NIK / No. Identitas',
              controller: controller.cNumberId,
              onChanged: controller.setNumberId,
              validation: (value) => true,
              margin: EdgeInsets.only(bottom: 15.h),
            ),
            const RegisterHeaderForm(label: 'Alamat'),
            InputPrimary(
              hint: 'Alamat',
              controller: controller.cAddress,
              onChanged: controller.setAddress,
              validation: (value) => true,
              margin: EdgeInsets.only(bottom: 15.h),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                child: Icon(
                  Icons.location_on_outlined,
                  size: 18.w,
                  color: AppColor.darkGrey,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: InputPrimary(
                    hint: 'RT',
                    controller: controller.cRt,
                    onChanged: controller.setRt,
                    validation: (value) => true,
                    margin: EdgeInsets.only(bottom: 15.h),
                  ),
                ),
                horizontalSpace(Insets.sm),
                Expanded(
                  child: InputPrimary(
                    hint: 'RW',
                    controller: controller.cRw,
                    onChanged: controller.setRw,
                    validation: (value) => true,
                    margin: EdgeInsets.only(bottom: 15.h),
                  ),
                )
              ],
            ),
            InputPrimary(
              hint: 'Kota / Kabupaten',
              controller: controller.cCity,
              onChanged: controller.setCity,
              validation: (value) => true,
              margin: EdgeInsets.only(bottom: 15.h),
            ),
            InputPrimary(
              hint: 'Kecamatan',
              controller: controller.cKecamatan,
              onChanged: controller.setKecamatan,
              validation: (value) => true,
              margin: EdgeInsets.only(bottom: 15.h),
            ),
            InputPrimary(
              hint: 'Kelurahan',
              controller: controller.cKelurahan,
              onChanged: controller.setKelurahan,
              validation: (value) => true,
              margin: EdgeInsets.only(bottom: 15.h),
            ),
            const RegisterHeaderForm(label: 'Akun'),
            InputNumber(
              hint: 'No. HP',
              controller: controller.cPhoneNumber,
              value: controller.setPhoneNumber,
              validation: (value) => value.isNotEmpty,
              margin: EdgeInsets.only(bottom: 15.h),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                TextInputMask(mask: '9999 9999 9999 9999 9999')
              ],
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                child: Icon(
                  Icons.call,
                  size: 18.w,
                  color: AppColor.darkGrey,
                ),
              ),
            ),
            InputEmail(
              hint: 'Email',
              controller: controller.cEmail,
              value: controller.setEmail,
              validation: (value) => true,
              margin: EdgeInsets.only(bottom: 15.h),
            ),
            InputPassword(
              controller: controller.cPassword,
              value: controller.setPassword,
              validation: (value) => true,
              validationText: '',
              margin: EdgeInsets.only(bottom: 15.h),
            ),
            InputPassword(
              hint: 'Ulangi Password',
              controller: controller.cConfirmPassword,
              value: controller.setConfirmPassword,
              validation: (value) => true,
              validationText: '',
              margin: EdgeInsets.only(bottom: 15.h),
            )
          ],
        ),
      ),
    );
  }
}
