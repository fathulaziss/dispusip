import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterController extends GetxController {
  List listGender = ['Laki - Laki', 'Perempuan'];
  List listTypeId = ['KTP', 'Paspor'];
  List listKecamatan = ['Sananwetan', 'Sanankulon'];
  List listKelurahan = ['Bendogerit', 'Sentul', 'Pakunden'];

  TextEditingController cFullName = TextEditingController();
  RxString fullName = ''.obs;
  RxBool isValidFullName = false.obs;

  RxString selectedGender = ''.obs;
  RxBool isValidGender = false.obs;

  TextEditingController cBirthPlace = TextEditingController();
  RxString birthPlace = ''.obs;
  RxBool isValidBirthPlace = false.obs;

  RxString selectedBirthday = ''.obs;
  RxBool isValidBirthday = false.obs;

  RxString selectedTypeId = ''.obs;
  RxBool isValidTypeId = false.obs;

  TextEditingController cNumberId = TextEditingController();
  RxString numberId = ''.obs;
  RxBool isValidNumberId = false.obs;

  TextEditingController cAddress = TextEditingController();
  RxString address = ''.obs;
  RxBool isValidAddress = false.obs;

  TextEditingController cRt = TextEditingController();
  RxString rt = ''.obs;
  RxBool isValidRt = false.obs;

  TextEditingController cRw = TextEditingController();
  RxString rw = ''.obs;
  RxBool isValidRw = false.obs;

  RxString selectedKecamatan = ''.obs;
  RxBool isValidKecamatan = false.obs;

  RxString selectedKelurahan = ''.obs;
  RxBool isValidKelurahan = false.obs;

  TextEditingController cPhoneNumber = TextEditingController();
  RxString phoneNumber = ''.obs;
  RxBool isValidPhoneNumber = false.obs;

  TextEditingController cEmail = TextEditingController();
  RxString email = ''.obs;
  RxBool isValidEmail = false.obs;

  TextEditingController cPassword = TextEditingController();
  RxString password = ''.obs;

  TextEditingController cConfirmPassword = TextEditingController();
  RxString confirmPassword = ''.obs;

  RxBool isValidPassword = false.obs;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

  void setFullName(String value) {
    fullName(value);
    if (fullName.value.isNotEmpty) {
      isValidFullName(true);
    } else {
      isValidFullName(false);
    }
    validateForm();
  }

  void setGender(String value) {
    selectedGender(value);
    if (selectedGender.value.isNotEmpty) {
      isValidGender(true);
    } else {
      isValidGender(false);
    }
    validateForm();
  }

  void setBirthPlace(String value) {
    birthPlace(value);
    if (birthPlace.value.isNotEmpty) {
      isValidBirthPlace(true);
    } else {
      isValidBirthPlace(false);
    }
    validateForm();
  }

  void setBirthday(String value) {
    selectedBirthday(value);
    if (selectedBirthday.value.isNotEmpty) {
      isValidBirthday(true);
    } else {
      isValidBirthday(false);
    }
    validateForm();
  }

  void setTypeId(String value) {
    selectedTypeId(value);
    if (selectedTypeId.value.isNotEmpty) {
      isValidTypeId(true);
    } else {
      isValidTypeId(false);
    }
    validateForm();
  }

  void setNumberId(String value) {
    numberId(value);
    if (numberId.value.isNotEmpty) {
      isValidNumberId(true);
    } else {
      isValidNumberId(false);
    }
    validateForm();
  }

  void setAddress(String value) {
    address(value);
    if (address.value.isNotEmpty) {
      isValidAddress(true);
    } else {
      isValidAddress(false);
    }
    validateForm();
  }

  void setRt(String value) {
    rt(value);
    if (rt.value.isNotEmpty) {
      isValidRt(true);
    } else {
      isValidRt(false);
    }
    validateForm();
  }

  void setRw(String value) {
    rw(value);
    if (rw.value.isNotEmpty) {
      isValidRw(true);
    } else {
      isValidRw(false);
    }
    validateForm();
  }

  void setKecamatan(String value) {
    selectedKecamatan(value);
    if (selectedKecamatan.value.isNotEmpty) {
      isValidKecamatan(true);
    } else {
      isValidKecamatan(false);
    }
    validateForm();
  }

  void setKelurahan(String value) {
    selectedKelurahan(value);
    if (selectedKelurahan.value.isNotEmpty) {
      isValidKelurahan(true);
    } else {
      isValidKelurahan(false);
    }
    validateForm();
  }

  void setPhoneNumber(int value) {
    phoneNumber('$value');
    if (phoneNumber.value.isNotEmpty) {
      isValidPhoneNumber(true);
    } else {
      isValidPhoneNumber(false);
    }
    validateForm();
  }

  void setEmail(String value) {
    email(value);
    if (email.value.isNotEmpty) {
      isValidEmail(true);
    } else {
      isValidEmail(false);
    }
    validateForm();
  }

  void setPassword(String value) {
    password(value);
    if (password.value.isNotEmpty && password.value == confirmPassword.value) {
      isValidPassword(true);
    } else {
      isValidPassword(false);
    }
    validateForm();
  }

  void setConfirmPassword(String value) {
    confirmPassword(value);
    if (confirmPassword.value.isNotEmpty &&
        confirmPassword.value == password.value) {
      isValidPassword(true);
    } else {
      isValidPassword(false);
    }
    validateForm();
  }

  void validateForm() {
    if (isValidFullName.value &&
        isValidGender.value &&
        isValidBirthPlace.value &&
        isValidBirthday.value &&
        isValidTypeId.value &&
        isValidNumberId.value &&
        isValidAddress.value &&
        isValidRt.value &&
        isValidRw.value &&
        isValidKecamatan.value &&
        isValidKelurahan.value &&
        isValidPhoneNumber.value &&
        isValidEmail.value &&
        isValidPassword.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
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
        setBirthday(date);
      } else {
        final date = DateFormat(dateFormat).format(datePicked);
        setBirthPlace(date);
      }
    }
  }
}
