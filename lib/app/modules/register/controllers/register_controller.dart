import 'package:dispusip/app/modules/register/models/register_gender_model.dart';
import 'package:dispusip/app/modules/register/models/register_type_id_model.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterController extends GetxController {
  List<RegisterGenderModel> listGender = [
    RegisterGenderModel(id: '1', value: 'Laki-laki'),
    RegisterGenderModel(id: '2', value: 'Perempuan'),
  ];
  RxList<RegisterTypeIdModel> listTypeId = <RegisterTypeIdModel>[].obs;

  final cFullName = TextEditingController();
  RxString fullName = ''.obs;
  RxBool isValidFullName = false.obs;

  Rx<RegisterGenderModel> selectedGender = RegisterGenderModel().obs;
  RxBool isValidGender = false.obs;

  final cBirthPlace = TextEditingController();
  RxString birthPlace = ''.obs;
  RxBool isValidBirthPlace = false.obs;

  RxString selectedBirthday = ''.obs;
  RxBool isValidBirthday = false.obs;

  Rx<RegisterTypeIdModel> selectedTypeId = RegisterTypeIdModel().obs;
  RxBool isValidTypeId = false.obs;

  final cNumberId = TextEditingController();
  RxString numberId = ''.obs;
  RxBool isValidNumberId = false.obs;

  final cAddress = TextEditingController();
  RxString address = ''.obs;
  RxBool isValidAddress = false.obs;

  final cRt = TextEditingController();
  RxString rt = ''.obs;
  RxBool isValidRt = false.obs;

  final cRw = TextEditingController();
  RxString rw = ''.obs;
  RxBool isValidRw = false.obs;

  final cCity = TextEditingController();
  RxString city = ''.obs;
  RxBool isValidCity = false.obs;

  final cKecamatan = TextEditingController();
  RxString kecamatan = ''.obs;
  RxBool isValidKecamatan = false.obs;

  final cKelurahan = TextEditingController();
  RxString kelurahan = ''.obs;
  RxBool isValidKelurahan = false.obs;

  final cPhoneNumber = TextEditingController();
  RxString phoneNumber = ''.obs;
  RxBool isValidPhoneNumber = false.obs;

  final cEmail = TextEditingController();
  RxString email = ''.obs;
  RxBool isValidEmail = false.obs;

  final cPassword = TextEditingController();
  RxString password = ''.obs;

  final cConfirmPassword = TextEditingController();
  RxString confirmPassword = ''.obs;

  RxBool isValidPassword = false.obs;

  RxBool isValidForm = false.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getTypeId();
    super.onInit();
  }

  Future<void> getTypeId() async {
    try {
      final r = await ApiService()
          .request(url: 'listidentity', method: Method.GET, isToken: false);
      final List data = r[0];
      listTypeId(
        RxList.from(data.map((e) => RegisterTypeIdModel.fromJson(e))),
      );
    } catch (e) {
      logSys(e.toString());
    }
  }

  void setFullName(String value) {
    fullName(value);
    if (fullName.value.isNotEmpty) {
      isValidFullName(true);
    } else {
      isValidFullName(false);
    }
    validateForm();
  }

  void setGender(RegisterGenderModel value) {
    selectedGender(value);
    if (selectedGender.value.id.isNotEmpty) {
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

  void setTypeId(RegisterTypeIdModel value) {
    selectedTypeId(value);
    if (selectedTypeId.value.id.isNotEmpty) {
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

  void setCity(String value) {
    city(value);
    if (city.value.isNotEmpty) {
      isValidCity(true);
    } else {
      isValidCity(false);
    }
    validateForm();
  }

  void setKecamatan(String value) {
    kecamatan(value);
    if (kecamatan.value.isNotEmpty) {
      isValidKecamatan(true);
    } else {
      isValidKecamatan(false);
    }
    validateForm();
  }

  void setKelurahan(String value) {
    kelurahan(value);
    if (kelurahan.value.isNotEmpty) {
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
        isValidCity.value &&
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

  Future<void> register() async {
    try {
      isLoading(true);
      final parameters = {
        'username': fullName.value,
        'email': email.value,
        'nomortelepon': phoneNumber.value,
        'password': password.value,
        'jeniskelamin': selectedGender.value.id,
        'tempatlahir': birthPlace.value,
        'tanggallahir': selectedBirthday.value,
        'jenisidentitas': selectedTypeId.value.id,
        'noidentitas': numberId.value,
        'alamat': address.value,
        'rt': rt.value,
        'rw': rw.value,
        'kecamatan': kecamatan.value,
        'kelurahan': kelurahan.value,
        'kabupaten': city.value,
      };
      final r = await ApiService().request(
        url: 'auth/signup',
        method: Method.POST,
        parameters: parameters,
      );
      isLoading(false);
      showPopUpInfo(
        title: 'Success',
        description: r['message'],
        labelButton: 'Login',
        onPress: () => Get.offNamed(Routes.LOGIN),
      );
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
        final date = DateFormat('dd-MM-yyyy').format(datePicked);
        setBirthday(date.replaceAll('-', '/'));
      } else {
        final date = DateFormat(dateFormat).format(datePicked);
        setBirthPlace(date.replaceAll('-', '/'));
      }
    }
  }
}
