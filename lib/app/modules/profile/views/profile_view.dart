// ignore_for_file: avoid_redundant_argument_values

import 'package:dispusip/app/modules/profile/controllers/profile_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Profile',
      isShowFooter: true,
      child: Column(
        children: [
          InputNumber(
            label: 'Nomor Anggota',
            hint: '',
            controller: controller.cNomorAnggota,
            enable: false,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Nama Lengkap',
            hint: '',
            controller: controller.cNamaLengkap,
            enable: false,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Kota Domisili',
            hint: '',
            controller: controller.cKotaDomisili,
            enable: false,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Email',
            hint: '',
            controller: controller.cEmail,
            enable: false,
            keyboardType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Tempat Tanggal Lahir',
            hint: '',
            controller: controller.cTempatTanggalLahir,
            enable: false,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputNumber(
            label: 'No. HP',
            hint: '',
            controller: controller.cNoHp,
            enable: false,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Status Anggota',
            hint: '',
            controller: controller.cStatusAnggota,
            enable: false,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Alamat',
            hint: '',
            controller: controller.cAlamat,
            enable: false,
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
