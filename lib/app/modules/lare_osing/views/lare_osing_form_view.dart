import 'package:dispusip/app/modules/lare_osing/controllers/lare_osing_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LareOsingFormView extends GetView<LareOsingController> {
  const LareOsingFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageDefaultTwo(
        titlePage: 'Formulir Lare Osing',
        isShowButtonBottom: true,
        buttonBottom: ButtonPrimary(
          onTap: controller.submit,
          label: 'KIRIM PERTANYAAN',
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
              hint: 'Masukkan Pekerjaan',
              controller: controller.cPekerjaan,
              onChanged: controller.setPekerjaan,
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
              hint: 'Masukkan Alamat',
              controller: controller.cAlamat,
              onChanged: controller.setAlamat,
              validation: (value) => true,
              maxLines: null,
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
            InputPrimary(
              hint: 'Masukkan Jenis Layanan',
              keyboardType: TextInputType.emailAddress,
              controller: controller.cJenisLayanan,
              onChanged: controller.setJenisLayanan,
              validation: (value) => true,
            ),
            verticalSpace(Insets.xs),
            InputPrimary(
              hint: 'Masukkan Pertanyaan',
              controller: controller.cPertanyaan,
              onChanged: controller.setPertanyaan,
              validation: (value) => true,
            ),
          ],
        ),
      ),
    );
  }
}
