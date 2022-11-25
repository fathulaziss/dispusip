import 'package:dispusip/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LareOsingController extends GetxController {
  final cNamaLengkap = TextEditingController();
  RxString namaLengkap = ''.obs;
  RxBool isValidNamaLengkap = false.obs;

  final cPekerjaan = TextEditingController();
  RxString pekerjaan = ''.obs;
  RxBool isValidPekerjaan = false.obs;

  final cNomorWa = TextEditingController();
  RxString nomorWa = ''.obs;
  RxBool isValidNomorWa = false.obs;

  final cAlamat = TextEditingController();
  RxString alamat = ''.obs;
  RxBool isValidAlamat = false.obs;

  final cEmail = TextEditingController();
  RxString email = ''.obs;
  RxBool isValidEmail = false.obs;

  final cJenisLayanan = TextEditingController();
  RxString jenisLayanan = ''.obs;
  RxBool isValidJenisLayanan = false.obs;

  final cPertanyaan = TextEditingController();
  RxString pertanyaan = ''.obs;
  RxBool isValidPertanyaan = false.obs;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

  void setNamaLengkap(String value) {
    namaLengkap(value);
    if (namaLengkap.value.isNotEmpty) {
      isValidNamaLengkap(true);
    } else {
      isValidNamaLengkap(false);
    }
    validate();
  }

  void setPekerjaan(String value) {
    pekerjaan(value);
    if (pekerjaan.value.isNotEmpty) {
      isValidPekerjaan(true);
    } else {
      isValidPekerjaan(false);
    }
    validate();
  }

  void setNomorWa(int value) {
    nomorWa('$value');
    if (nomorWa.value.isNotEmpty) {
      isValidNomorWa(true);
    } else {
      isValidNomorWa(false);
    }
    validate();
  }

  void setAlamat(String value) {
    alamat(value);
    if (alamat.value.isNotEmpty) {
      isValidAlamat(true);
    } else {
      isValidAlamat(false);
    }
    validate();
  }

  void setEmail(String value) {
    email(value);
    if (email.value.isNotEmpty) {
      isValidEmail(true);
    } else {
      isValidEmail(false);
    }
    validate();
  }

  void setJenisLayanan(String value) {
    jenisLayanan(value);
    if (jenisLayanan.value.isNotEmpty) {
      isValidJenisLayanan(true);
    } else {
      isValidJenisLayanan(false);
    }
    validate();
  }

  void setPertanyaan(String value) {
    pertanyaan(value);
    if (pertanyaan.value.isNotEmpty) {
      isValidPertanyaan(true);
    } else {
      isValidPertanyaan(false);
    }
    validate();
  }

  void validate() {
    if (isValidNamaLengkap.value &&
        isValidPekerjaan.value &&
        isValidNomorWa.value &&
        isValidAlamat.value &&
        isValidEmail.value &&
        isValidJenisLayanan.value &&
        isValidPertanyaan.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
    }
  }

  Future<void> submit() async {
    try {
      AppUtils.dismissKeyboard();

      isLoading(true);

      // final parameters = {
      //   'namapenanggungjawab': namaPenanggungJawab.value,
      //   'nomortelepon': nomorTelepon.value,
      //   'namalembaga': namaLembaga.value,
      //   'alamatlembaga': alamatLembaga.value,
      //   'nomorteleponlembaga': nomorTeleponLembaga.value,
      //   'jabatan': jabatan.value,
      //   'nip': nip.value,
      //   'jumlah_eksemplar': jumlahEksemplar.value,
      //   'tgl_pinjam': tanggalPeminjaman.value,
      // };

      // final r = await ApiService().request(
      //   url: 'book/pinjam',
      //   method: Method.POST,
      //   parameters: parameters,
      // );

      isLoading(false);

      // showPopUpInfo(title: 'Success', description: r['message']);
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}