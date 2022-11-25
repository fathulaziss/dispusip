import 'package:dio/dio.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';

class RestAreaController extends GetxController {
  final cNamaLengkap = TextEditingController();
  RxString namaLengkap = ''.obs;
  RxBool isValidNamaLengkap = false.obs;

  final cEmail = TextEditingController();
  RxString email = ''.obs;
  RxBool isValidEmail = false.obs;

  final cNomorWa = TextEditingController();
  RxString nomorWa = ''.obs;
  RxBool isValidNomorWa = false.obs;

  final cAsalLembaga = TextEditingController();
  RxString asalLembaga = ''.obs;
  RxBool isValidAsalLembaga = false.obs;

  RxString tanggalKunjungan = ''.obs;
  RxBool isValidTanggalKunjungan = false.obs;

  Rx<PlatformFile> berkas = PlatformFile(name: '', size: 0).obs;
  RxString berkasPath = ''.obs;
  RxBool isValidBerkas = false.obs;

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

  void setEmail(String value) {
    email(value);
    if (email.value.isNotEmpty) {
      isValidEmail(true);
    } else {
      isValidEmail(false);
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

  void setAsalLembaga(String value) {
    asalLembaga(value);
    if (asalLembaga.value.isNotEmpty) {
      isValidAsalLembaga(true);
    } else {
      isValidAsalLembaga(false);
    }
    validate();
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
        setTanggalKunjungan(date);
      } else {
        final date = DateFormat(dateFormat).format(datePicked);
        setTanggalKunjungan(date);
      }
    }
  }

  void setTanggalKunjungan(String value) {
    tanggalKunjungan(value);
    if (tanggalKunjungan.value.isNotEmpty) {
      isValidTanggalKunjungan(true);
    } else {
      isValidTanggalKunjungan(false);
    }
    validate();
  }

  Future<void> setBerkas() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      berkas.value = result.files[0];
      berkasPath(berkas.value.path);
      logSys('cek path : ${berkasPath.value}');
      logSys('cek name : ${berkas.value.name}');
    }

    if (berkasPath.value.isNotEmpty) {
      isValidBerkas(true);
    } else {
      isValidBerkas(false);
    }
    validate();
  }

  void validate() {
    if (isValidNamaLengkap.value &&
        isValidEmail.value &&
        isValidNomorWa.value &&
        isValidAsalLembaga.value &&
        isValidTanggalKunjungan.value &&
        isValidBerkas.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
    }
  }

  Future<void> submit() async {
    try {
      AppUtils.dismissKeyboard();

      isLoading(true);

      final parameters = FormData.fromMap({
        'name': 'wendux',
        'age': 25,
        'file': await MultipartFile.fromFile(
          berkasPath.value,
          filename: berkas.value.name,
        ),
      });

      logSys(parameters.toString());

      // await ApiService().request(
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
