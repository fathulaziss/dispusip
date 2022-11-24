import 'package:dispusip/app/modules/warna_pelangi/components/warna_pelangi_tanggal_kunjungan.dart';
import 'package:dispusip/app/modules/warna_pelangi/components/warna_pelangi_upload_berkas.dart';
import 'package:dispusip/app/modules/warna_pelangi/controllers/warna_pelangi_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WarnaPelangiFormView extends GetView<WarnaPelangiController> {
  const WarnaPelangiFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageDefaultTwo(
        titlePage: 'Formulir Warna Pelangi',
        isShowButtonBottom: true,
        buttonBottom: ButtonPrimary(
          onTap: controller.submit,
          label: 'KIRIM PENGAJUAN',
          enabled: controller.isValidForm.value,
          isLoading: controller.isLoading.value,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pastikan email dan nomor whatsapp Anda aktif, kami akan segera merespon laporan Anda kurang dari 24 jam.',
              style: TextStyles.desc,
            ),
            verticalSpace(Insets.lg),
            InputPrimary(
              hint: 'Masukkan Nama Lengkap',
              controller: controller.cNamaLengkap,
              onChanged: controller.setNamaLengkap,
              validation: (value) => true,
            ),
            verticalSpace(Insets.xs),
            InputPrimary(
              hint: 'Masukkan Email',
              keyboardType: TextInputType.emailAddress,
              controller: controller.cEmail,
              onChanged: controller.setEmail,
              validation: (value) => true,
            ),
            verticalSpace(Insets.xs),
            InputNumber(
              hint: 'Masukkan Nomor Whatsapp',
              controller: controller.cNomorWa,
              value: controller.setNomorWa,
              validation: (value) => true,
            ),
            verticalSpace(Insets.xs),
            InputPrimary(
              hint: 'Masukkan Asal Lembaga',
              controller: controller.cAsalLembaga,
              onChanged: controller.setAsalLembaga,
              validation: (value) => true,
            ),
            verticalSpace(Insets.sm),
            const WarnaPelangiTanggalKunjungan(),
            verticalSpace(Insets.med),
            const WarnaPelangiUploadBerkas(),
          ],
        ),
      ),
    );
  }
}
