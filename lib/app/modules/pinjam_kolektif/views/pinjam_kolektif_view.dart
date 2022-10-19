import 'package:dispusip/app/modules/pinjam_kolektif/components/pinjam_kolektif_date_dropdown.dart';
import 'package:dispusip/app/modules/pinjam_kolektif/components/pinjam_kolektif_eksemplar_dropdown.dart';
import 'package:dispusip/app/modules/pinjam_kolektif/controllers/pinjam_kolektif_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PinjamKolektifView extends GetView<PinjamKolektifController> {
  const PinjamKolektifView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Pinjam Kolektif',
      isShowButtonBottom: true,
      buttonBottom: ButtonPrimary(
        onTap: () {},
        label: 'SIMPAN',
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Silahkan isikan form dibawah ini untuk mengajukan Pinjaman Kolektif.',
            style: TextStyles.desc,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Nama Penanggung Jawab',
            hint: 'Masukkan Penanggung Jawab',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_penanggung_jawab.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputNumber(
            label: 'No. Telp',
            hint: 'Masukkan No. Telp',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_phone1.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Nama Lembaga',
            hint: 'Masukkan Nama Lembaga',
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
            label: 'Alamat Lembaga',
            hint: 'Masukkan Alamat Lembaga',
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
            label: 'No. Telp Lembaga',
            hint: 'Masukkan No. Telp',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_phone2.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Jabatan',
            hint: 'Masukkan Jabatan',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_jabatan.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          InputNumber(
            label: 'NIP',
            hint: 'Masukkan NIP',
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_nip.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          const PinjamKolektifEksemplarDropdown(),
          verticalSpace(Insets.lg),
          const PinjamKolektifDateDropdown(),
          verticalSpace(Insets.lg),
        ],
      ),
    );
  }
}
