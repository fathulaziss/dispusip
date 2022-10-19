// ignore_for_file: avoid_redundant_argument_values

import 'package:dispusip/app/modules/usulan_buku/controllers/usulan_buku_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UsulanBukuView extends GetView<UsulanBukuController> {
  const UsulanBukuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Usulan Buku',
      isShowButtonBottom: true,
      buttonBottom: ButtonPrimary(
        onTap: () {},
        label: 'SIMPAN',
      ),
      child: Column(
        children: [
          Text(
            'Silahkan isikan form dibawah ini untuk mengajukan usulan buku.',
            style: TextStyles.desc,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Judul Buku',
            hint: 'Masukkan Judul Buku',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_judul_buku.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Pengarang',
            hint: 'Masukkan Nama Pengarang',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_author.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Penerbit',
            hint: 'Masukkan Penerbit',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_publisher.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Kota Terbit',
            hint: 'Masukkan Kota Terbit',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_location.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputNumber(
            label: 'Tahun Terbit',
            hint: 'Masukkan Tahun Terbit',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_calendar.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Komentar',
            hint: 'Masukkan Komentar',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            maxLines: null,
            minLines: null,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_comment.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
        ],
      ),
    );
  }
}
