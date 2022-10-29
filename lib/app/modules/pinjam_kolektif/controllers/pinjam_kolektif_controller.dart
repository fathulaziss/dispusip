import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PinjamKolektifController extends GetxController {
  final cNamaPenanggungJawab = TextEditingController();
  RxString namaPenanggungJawab = ''.obs;
  RxBool isValidNamaPenanggungJawab = false.obs;

  final cNomorTelepon = TextEditingController();
  RxString nomorTelepon = ''.obs;
  RxBool isValidNomorTelepon = false.obs;

  final cNamaLembaga = TextEditingController();
  RxString namaLembaga = ''.obs;
  RxBool isValidNamaLembaga = false.obs;

  final cAlamatLembaga = TextEditingController();
  RxString alamatLembaga = ''.obs;
  RxBool isValidAlamatLembaga = false.obs;

  final cNomorTeleponLembaga = TextEditingController();
  RxString nomorTeleponLembaga = ''.obs;
  RxBool isValidNomorTeleponLembaga = false.obs;

  final cJabatan = TextEditingController();
  RxString jabatan = ''.obs;
  RxBool isValidJabatan = false.obs;

  final cNip = TextEditingController();
  RxString nip = ''.obs;
  RxBool isValidNip = false.obs;

  final cJumlahEksemplar = TextEditingController();
  RxString jumlahEksemplar = ''.obs;
  RxBool isValidJumlahEksemplar = false.obs;

  RxString tanggalPeminjaman = ''.obs;
  RxBool isValidTanggalPeminjaman = false.obs;

  RxBool isLoading = false.obs;
  RxBool isValidForm = false.obs;

  void setNamaPenanggungJawab(String value) {
    namaPenanggungJawab(value);
    if (namaPenanggungJawab.value.isNotEmpty) {
      isValidNamaPenanggungJawab(true);
    } else {
      isValidNamaPenanggungJawab(false);
    }
    validate();
  }

  void setNomorTelepon(int value) {
    nomorTelepon('$value');
    if (nomorTelepon.value.isNotEmpty) {
      isValidNomorTelepon(true);
    } else {
      isValidNomorTelepon(false);
    }
    validate();
  }

  void setNamaLembaga(String value) {
    namaLembaga(value);
    if (namaLembaga.value.isNotEmpty) {
      isValidNamaLembaga(true);
    } else {
      isValidNamaLembaga(false);
    }
    validate();
  }

  void setAlamatLembaga(String value) {
    alamatLembaga(value);
    if (alamatLembaga.value.isNotEmpty) {
      isValidAlamatLembaga(true);
    } else {
      isValidAlamatLembaga(false);
    }
    validate();
  }

  void setNomorTeleponLembaga(int value) {
    nomorTeleponLembaga('$value');
    if (nomorTeleponLembaga.value.isNotEmpty) {
      isValidNomorTeleponLembaga(true);
    } else {
      isValidNomorTeleponLembaga(false);
    }
    validate();
  }

  void setJabatan(String value) {
    jabatan(value);
    if (jabatan.value.isNotEmpty) {
      isValidJabatan(true);
    } else {
      isValidJabatan(false);
    }
    validate();
  }

  void setNip(int value) {
    nip('$value');
    if (nip.value.isNotEmpty) {
      isValidNip(true);
    } else {
      isValidNip(false);
    }
    validate();
  }

  void setJumlahEksemplar(int value) {
    jumlahEksemplar('$value');
    if (jumlahEksemplar.value.isNotEmpty) {
      isValidJumlahEksemplar(true);
    } else {
      isValidJumlahEksemplar(false);
    }
    validate();
  }

  void setDate(String value) {
    tanggalPeminjaman(value);
    if (tanggalPeminjaman.value.isNotEmpty) {
      isValidTanggalPeminjaman(true);
    } else {
      isValidTanggalPeminjaman(false);
    }
    validate();
  }

  void validate() {
    if (isValidNamaPenanggungJawab.value &&
        isValidNomorTelepon.value &&
        isValidNamaLembaga.value &&
        isValidAlamatLembaga.value &&
        isValidNomorTeleponLembaga.value &&
        isValidJabatan.value &&
        isValidNip.value &&
        isValidJumlahEksemplar.value &&
        isValidTanggalPeminjaman.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
    }
  }

  Future<void> submit() async {
    try {
      isLoading(true);

      final parameters = {
        'namapenanggungjawab': namaPenanggungJawab.value,
        'nomortelepon': nomorTelepon.value,
        'namalembaga': namaLembaga.value,
        'alamatlembaga': alamatLembaga.value,
        'nomorteleponlembaga': nomorTeleponLembaga.value,
        'jabatan': jabatan.value,
        'nip': nip.value,
        'jumlah_eksemplar': jumlahEksemplar.value,
        'tgl_pinjam': tanggalPeminjaman.value,
      };

      final r = await ApiService().request(
        url: 'book/pinjam',
        method: Method.POST,
        parameters: parameters,
      );

      isLoading(false);

      showPopUpInfo(title: 'Success', description: r['message']);
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }

  Future<void> chooseDate({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    String? dateFormat,
  }) async {
    final datePicked = await DatePicker.showSimpleDatePicker(
      context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime(2050),
      dateFormat: 'dd-MMMM-yyyy',
      locale: DateTimePickerLocale.id,
      textColor: AppColor.primaryColor,
      cancelText: 'Batal',
      titleText: 'Pilih Tanggal',
      itemTextStyle: TextStyles.text,
      backgroundColor: AppColor.greenAccent,
    );

    if (datePicked != null) {
      if (dateFormat == null) {
        final date = DateFormat('yyyy-MM-dd').format(datePicked);
        setDate(date);
      } else {
        final date = DateFormat(dateFormat).format(datePicked);
        setDate(date);
      }
    }
  }
}
