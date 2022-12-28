import 'package:dispusip/app/modules/kunjungan/components/kunjungan_date_dropdown.dart';
import 'package:dispusip/app/modules/kunjungan/controllers/kunjungan_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class KunjunganView extends GetView<KunjunganController> {
  const KunjunganView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageDefaultTwo(
        titlePage: 'Rencana Kunjungan',
        isShowButtonBottom: true,
        buttonBottom: ButtonPrimary(
          onTap: controller.submit,
          isLoading: controller.isLoading.value,
          enabled: controller.isValidForm.value,
          label: 'SIMPAN',
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Silahkan isikan form dibawah ini untuk mengajukan Rencana Kunjungan.',
              style: TextStyles.desc,
            ),
            verticalSpace(Insets.lg),
            InputPrimary(
              label: 'Nama Ketua Rombongan',
              hint: 'Masukkan Nama Ketua',
              controller: controller.cNamaKetua,
              onChanged: controller.setNamaKetua,
              validation: (value) => true,
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
              label: 'No. Telp Ketua Rombongan',
              hint: 'Masukkan No. Telp',
              controller: controller.cNoKetua,
              value: controller.setNoKetua,
              validation: (value) => true,
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
              controller: controller.cNamaLembaga,
              onChanged: controller.setNamaLembaga,
              validation: (value) => true,
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
              controller: controller.cAlamatLembaga,
              onChanged: controller.setAlamatLembaga,
              validation: (value) => true,
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
              controller: controller.cNoLembaga,
              value: controller.setNoLembaga,
              validation: (value) => true,
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
              label: 'Email Lembaga',
              hint: 'Masukkan Email',
              controller: controller.cEmailLembaga,
              onChanged: controller.setEmailLembaga,
              validation: (value) => true,
              contentPadding: EdgeInsets.all(Insets.sm),
              keyboardType: TextInputType.emailAddress,
              inputStyle: InputStyle.line,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                child: SizedBox.square(
                  dimension: 18.w,
                  child: Image.asset(AppAsset.icon('ic_email.png')),
                ),
              ),
            ),
            verticalSpace(Insets.lg),
            InputNumber(
              label: 'Jumlah Personel',
              hint: 'Masukkan Jumlah Personel',
              controller: controller.cJumlahPersonel,
              value: controller.setJumlahPersonel,
              validation: (value) => true,
              contentPadding: EdgeInsets.all(Insets.sm),
              inputStyle: InputStyle.line,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                child: SizedBox.square(
                  dimension: 18.w,
                  child: Image.asset(AppAsset.icon('ic_personel.png')),
                ),
              ),
            ),
            verticalSpace(Insets.lg),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: InputNumber(
                      label: 'Jumlah Laki-laki',
                      hint: '0',
                      controller: controller.cJumlahLaki,
                      value: controller.setJumlahLaki,
                      validation: (value) => true,
                      contentPadding: EdgeInsets.all(Insets.sm),
                      inputStyle: InputStyle.line,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                        child: SizedBox.square(
                          dimension: 18.w,
                          child: Image.asset(AppAsset.icon('ic_male.png')),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: InputNumber(
                      label: 'Jumlah Perempuan',
                      hint: '0',
                      controller: controller.cJumlahPerempuan,
                      value: controller.setJumlahPerempuan,
                      validation: (value) => true,
                      contentPadding: EdgeInsets.all(Insets.sm),
                      inputStyle: InputStyle.line,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                        child: SizedBox.square(
                          dimension: 18.w,
                          child: Image.asset(AppAsset.icon('ic_female.png')),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(Insets.lg),
            const KunjunganKelompokDateDropdown(),
            verticalSpace(Insets.lg),
            verticalSpace(MediaQuery.of(context).viewInsets.bottom / 1.5),
          ],
        ),
      ),
    );
  }
}
