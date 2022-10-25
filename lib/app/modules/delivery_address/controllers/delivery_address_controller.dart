import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryAddressController extends GetxController {
  final cUserInfo = Get.find<UserInfoController>();

  final cAlamatDomisili = TextEditingController();
  RxString alamatDomisiliUpdate = ''.obs;
  RxBool isValidAlamatDomisiliUpdate = false.obs;

  final cRtDomisili = TextEditingController();
  RxString rtDomisiliUpdate = ''.obs;
  RxBool isValidRtDomisiliUpdate = false.obs;

  final cRwDomisili = TextEditingController();
  RxString rwDomisiliUpdate = ''.obs;
  RxBool isValidRwDomisiliUpdate = false.obs;

  final cKecamatanDomisili = TextEditingController();
  RxString kecamatanDomisiliUpdate = ''.obs;
  RxBool isValidKecamatanDomisiliUpdate = false.obs;

  final cKelurahanDomisili = TextEditingController();
  RxString kelurahanDomisiliUpdate = ''.obs;
  RxBool isValidKelurahanDomisiliUpdate = false.obs;

  final cKotaDomisili = TextEditingController();
  RxString kotaDomisiliUpdate = ''.obs;
  RxBool isValidKotaDomisiliUpdate = false.obs;

  RxBool isLoading = false.obs;
  RxBool isValidForm = false.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  void setDataDomisili() {
    cAlamatDomisili.text = cUserInfo.dataUser.value.alamatDomisili;
    setAlamatDomisili(cUserInfo.dataUser.value.alamatDomisili);
    cRtDomisili.text = cUserInfo.dataUser.value.rTDomisili;
    setRtDomisili(cUserInfo.dataUser.value.rTDomisili);
    cRwDomisili.text = cUserInfo.dataUser.value.rWDomisili;
    setRwDomisili(cUserInfo.dataUser.value.rWDomisili);
    cKecamatanDomisili.text = cUserInfo.dataUser.value.kecamatanDomisili;
    setKecamatanDomisili(cUserInfo.dataUser.value.kecamatanDomisili);
    cKelurahanDomisili.text = cUserInfo.dataUser.value.kelurahanDomisili;
    setKelurahanDomisili(cUserInfo.dataUser.value.kelurahanDomisili);
    cKotaDomisili.text = cUserInfo.dataUser.value.kotaDomisili;
    setKotaDomisili(cUserInfo.dataUser.value.kotaDomisili);
  }

  void setAlamatDomisili(String value) {
    alamatDomisiliUpdate(value);
    if (alamatDomisiliUpdate.isNotEmpty) {
      isValidAlamatDomisiliUpdate(true);
    } else {
      isValidAlamatDomisiliUpdate(false);
    }
    validate();
  }

  void setRtDomisili(String value) {
    rtDomisiliUpdate(value);
    if (rtDomisiliUpdate.isNotEmpty) {
      isValidRtDomisiliUpdate(true);
    } else {
      isValidRtDomisiliUpdate(false);
    }
    validate();
  }

  void setRwDomisili(String value) {
    rwDomisiliUpdate(value);
    if (rwDomisiliUpdate.isNotEmpty) {
      isValidRwDomisiliUpdate(true);
    } else {
      isValidRwDomisiliUpdate(false);
    }
    validate();
  }

  void setKelurahanDomisili(String value) {
    kelurahanDomisiliUpdate(value);
    if (kelurahanDomisiliUpdate.isNotEmpty) {
      isValidKelurahanDomisiliUpdate(true);
    } else {
      isValidKelurahanDomisiliUpdate(false);
    }
    validate();
  }

  void setKecamatanDomisili(String value) {
    kecamatanDomisiliUpdate(value);
    if (kecamatanDomisiliUpdate.isNotEmpty) {
      isValidKecamatanDomisiliUpdate(true);
    } else {
      isValidKecamatanDomisiliUpdate(false);
    }
    validate();
  }

  void setKotaDomisili(String value) {
    kotaDomisiliUpdate(value);
    if (kotaDomisiliUpdate.isNotEmpty) {
      isValidKotaDomisiliUpdate(true);
    } else {
      isValidKotaDomisiliUpdate(false);
    }
    validate();
  }

  void validate() {
    if (isValidAlamatDomisiliUpdate.value &&
        isValidRtDomisiliUpdate.value &&
        isValidRwDomisiliUpdate.value &&
        isValidKelurahanDomisiliUpdate.value &&
        isValidKecamatanDomisiliUpdate.value &&
        isValidKotaDomisiliUpdate.value) {
      isValidForm(true);
    } else {
      isValidForm(false);
    }
  }

  Future<void> submit() async {
    try {
      isLoading(true);

      final parameters = {
        'alamat': alamatDomisiliUpdate.value,
        'rt': rtDomisiliUpdate.value,
        'rw': rwDomisiliUpdate.value,
        'kecamatan': kecamatanDomisiliUpdate.value,
        'kelurahan': kelurahanDomisiliUpdate.value,
        'kabupaten': kotaDomisiliUpdate.value
      };

      final r = await ApiService().request(
        url: 'profile/editdomisili',
        method: Method.POST,
        parameters: parameters,
      );

      await cUserInfo.getProfile();

      isLoading(false);

      showPopUpInfo(
        title: 'Success',
        description: r['message'],
        onPress: () {
          Get
            ..back()
            ..back();
        },
      );
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}
