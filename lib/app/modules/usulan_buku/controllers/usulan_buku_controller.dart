import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsulanBukuController extends GetxController {
  final cJudulBuku = TextEditingController();
  RxString judulBuku = ''.obs;
  RxBool isValidJudulBuku = false.obs;

  final cPengarang = TextEditingController();
  RxString pengarang = ''.obs;
  RxBool isValidPengarang = false.obs;

  final cPenerbit = TextEditingController();
  RxString penerbit = ''.obs;
  RxBool isValidPenerbit = false.obs;

  final cKotaTerbit = TextEditingController();
  RxString kotaTerbit = ''.obs;
  RxBool isValidKotaTerbit = false.obs;

  final cTahunTerbit = TextEditingController();
  RxString tahunTerbit = ''.obs;
  RxBool isValidTahunTerbit = false.obs;

  final cKomentar = TextEditingController();
  RxString komentar = ''.obs;
  RxBool isValidKomentar = false.obs;

  RxBool isLoading = false.obs;
  RxBool isValidForm = false.obs;

  void setJudulBuku(String value) {
    judulBuku(value);
    if (judulBuku.value.isNotEmpty) {
      isValidJudulBuku(true);
    } else {
      isValidJudulBuku(false);
    }
    validate();
  }

  void setPengarang(String value) {
    pengarang(value);
    if (pengarang.value.isNotEmpty) {
      isValidPengarang(true);
    } else {
      isValidPengarang(false);
    }
    validate();
  }

  void setPenerbit(String value) {
    penerbit(value);
    if (penerbit.value.isNotEmpty) {
      isValidPenerbit(true);
    } else {
      isValidPenerbit(false);
    }
    validate();
  }

  void setKotaTerbit(String value) {
    kotaTerbit(value);
    if (kotaTerbit.value.isNotEmpty) {
      isValidKotaTerbit(true);
    } else {
      isValidKotaTerbit(false);
    }
    validate();
  }

  void setTahunTerbit(int value) {
    tahunTerbit('$value');
    if (tahunTerbit.value.isNotEmpty) {
      isValidTahunTerbit(true);
    } else {
      isValidTahunTerbit(false);
    }
    validate();
  }

  void setKomentar(String value) {
    komentar(value);
    if (komentar.value.isNotEmpty) {
      isValidKomentar(true);
    } else {
      isValidKomentar(false);
    }
    validate();
  }

  void validate() {
    if (isValidJudulBuku.value &&
        isValidPengarang.value &&
        isValidPenerbit.value &&
        isValidKotaTerbit.value &&
        isValidTahunTerbit.value &&
        isValidKomentar.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
    }
  }

  Future<void> submit() async {
    try {
      isLoading(true);

      final parameters = {
        'judul': judulBuku.value,
        'penerbit': penerbit.value,
        'kotaterbit': kotaTerbit.value,
        'tahunterbit': tahunTerbit.value,
        'komentar': komentar.value,
        'pengarang': pengarang.value,
      };

      final r = await ApiService().request(
        url: 'book/usulan',
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

  void resetForm() {
    cJudulBuku.clear();
    cPengarang.clear();
    cPenerbit.clear();
    cKotaTerbit.clear();
    cTahunTerbit.clear();
    cKomentar.clear();
    isValidJudulBuku(false);
    isValidPengarang(false);
    isValidPenerbit(false);
    isValidKotaTerbit(false);
    isValidTahunTerbit(false);
    isValidKomentar(false);
    isValidForm(false);
    judulBuku('');
    pengarang('');
    penerbit('');
    kotaTerbit('');
    tahunTerbit('');
    komentar('');
  }
}
