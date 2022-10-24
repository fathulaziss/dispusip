import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class KunjunganKelompokController extends GetxController {
  final cNamaKetua = TextEditingController();
  RxString namaKetua = ''.obs;
  RxBool isValidNamaKetua = false.obs;

  final cNoKetua = TextEditingController();
  RxString noKetua = ''.obs;
  RxBool isValidNoKetua = false.obs;

  final cNamaLembaga = TextEditingController();
  RxString namaLembaga = ''.obs;
  RxBool isValidNamaLembaga = false.obs;

  final cAlamatLembaga = TextEditingController();
  RxString alamatLembaga = ''.obs;
  RxBool isValidAlamatLembaga = false.obs;

  final cNoLembaga = TextEditingController();
  RxString noLembaga = ''.obs;
  RxBool isValidNoLembaga = false.obs;

  final cEmailLembaga = TextEditingController();
  RxString emailLembaga = ''.obs;
  RxBool isValidEmailLembaga = false.obs;

  final cJumlahPersonel = TextEditingController();
  RxString jumlahPersonel = ''.obs;
  RxBool isValidJumlahPersonel = false.obs;

  final cJumlahLaki = TextEditingController();
  RxString jumlahLaki = ''.obs;
  RxBool isValidJumlahLaki = false.obs;

  final cJumlahPerempuan = TextEditingController();
  RxString jumlahPerempuan = ''.obs;
  RxBool isValidJumlahPerempuan = false.obs;

  RxString selectedDate = ''.obs;
  RxBool isValidSelectedDate = false.obs;

  RxBool isLoading = false.obs;
  RxBool isValidForm = false.obs;

  void setNamaKetua(String value) {
    namaKetua(value);
    if (namaKetua.value.isNotEmpty) {
      isValidNamaKetua(true);
    } else {
      isValidNamaKetua(false);
    }
    validate();
  }

  void setNoKetua(int value) {
    noKetua('$value');
    if (noKetua.value.isNotEmpty) {
      isValidNoKetua(true);
    } else {
      isValidNoKetua(false);
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

  void setNoLembaga(int value) {
    noLembaga('$value');
    if (noLembaga.value.isNotEmpty) {
      isValidNoLembaga(true);
    } else {
      isValidNoLembaga(false);
    }
    validate();
  }

  void setEmailLembaga(String value) {
    emailLembaga(value);
    if (emailLembaga.value.isNotEmpty) {
      isValidEmailLembaga(true);
    } else {
      isValidEmailLembaga(false);
    }
    validate();
  }

  void setJumlahPersonel(int value) {
    jumlahPersonel('$value');
    if (jumlahPersonel.value.isNotEmpty) {
      isValidJumlahPersonel(true);
    } else {
      isValidJumlahPersonel(false);
    }
    validate();
  }

  void setJumlahLaki(int value) {
    jumlahLaki('$value');
    if (jumlahLaki.value.isNotEmpty) {
      isValidJumlahLaki(true);
    } else {
      isValidJumlahLaki(false);
    }
    validate();
  }

  void setJumlahPerempuan(int value) {
    jumlahPerempuan('$value');
    if (jumlahPerempuan.value.isNotEmpty) {
      isValidJumlahPerempuan(true);
    } else {
      isValidJumlahPerempuan(false);
    }
    validate();
  }

  void setDate(String value) {
    selectedDate(value);
    if (selectedDate.value.isNotEmpty) {
      isValidSelectedDate(true);
    } else {
      isValidSelectedDate(false);
    }
    validate();
  }

  Future<void> submit() async {
    try {
      isLoading(true);

      final parameters = {
        'namaketua': namaKetua.value,
        'nomortelepon': noKetua.value,
        'namalembaga': namaLembaga.value,
        'nomorteleponlembaga': noLembaga.value,
        'emaillembaga': emailLembaga.value,
        'rencanakunjungan': selectedDate.value,
        'jumlah_laki': jumlahLaki.value,
        'jumlah_perempuan': jumlahPerempuan.value,
        'jumlahpersonel': jumlahPersonel.value,
        'alamatlembaga': alamatLembaga.value
      };

      final r = await ApiService().request(
        url: 'kunjungan/post',
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

  void validate() {
    if (isValidNamaKetua.value &&
        isValidNoKetua.value &&
        isValidNamaLembaga.value &&
        isValidAlamatLembaga.value &&
        isValidNoLembaga.value &&
        isValidEmailLembaga.value &&
        isValidJumlahPersonel.value &&
        isValidJumlahLaki.value &&
        isValidJumlahPerempuan.value &&
        isValidSelectedDate.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
    }
  }

  void resetForm() {
    cNamaKetua.clear();
    cNoKetua.clear();
    cNamaLembaga.clear();
    cAlamatLembaga.clear();
    cNoLembaga.clear();
    cEmailLembaga.clear();
    cJumlahPersonel.clear();
    cJumlahLaki.clear();
    cJumlahPerempuan.clear();
    selectedDate('');
    isValidForm(false);
    isValidNamaKetua(false);
    isValidNoKetua(false);
    isValidNamaLembaga(false);
    isValidAlamatLembaga(false);
    isValidNoLembaga(false);
    isValidEmailLembaga(false);
    isValidJumlahPersonel(false);
    isValidJumlahLaki(false);
    isValidJumlahPerempuan(false);
    isValidSelectedDate(false);
    namaKetua('');
    noKetua('');
    namaLembaga('');
    alamatLembaga('');
    noLembaga('');
    emailLembaga('');
    jumlahPersonel('');
    jumlahLaki('');
    jumlahPerempuan('');
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
