// ignore_for_file: avoid_redundant_argument_values

import 'package:dispusip/app/modules/edit_profile/controllers/edit_profile_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Edit Profile',
      isShowFooter: true,
      child: Column(
        children: [
          InputNumber(
            label: 'Nomor Anggota',
            hint: 'Masukkan Nomor Anggota',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Nama Lengkap',
            hint: 'Masukkan Nama Lengkap',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Kota Domisili',
            hint: 'Masukkan Kota Domisili',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Email',
            hint: 'Masukkan Email',
            keyboardType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Tempat Tanggal Lahir',
            hint: 'Masukkan Tempat Tanggal Lahir',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputNumber(
            label: 'No. HP',
            hint: 'Masukkan Nomor HP',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Status Anggota',
            hint: 'Masukkan Status Anggota',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Alamat',
            hint: 'Masukkan Alamat',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            maxLines: null,
            minLines: null,
          ),
          verticalSpace(Insets.lg),
        ],
      ),
    );
  }
}
