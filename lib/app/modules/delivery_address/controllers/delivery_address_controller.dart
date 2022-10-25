import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryAddressController extends GetxController {
  final cUserInfo = Get.find<UserInfoController>();

  RxString alamatAsli = ''.obs;
  RxString rtrwAsli = ''.obs;
  RxString kelKecAsli = ''.obs;
  RxString kotaAsli = ''.obs;

  RxString alamatDomisili = ''.obs;
  RxString rtrwDomisili = ''.obs;
  RxString kelKecDomisili = ''.obs;
  RxString kotaDomisili = ''.obs;

  final cAlamatDomisili = TextEditingController();
  final cRtDomisili = TextEditingController();
  final cRwDomisili = TextEditingController();
  final cKecamatanDomisili = TextEditingController();
  final cKelurahanDomisili = TextEditingController();
  final cKotaDomisili = TextEditingController();

  RxString alamatDomisiliUpdate = ''.obs;
  RxBool isValidAlamatDomisiliUpdate = false.obs;

  RxString rtDomisiliUpdate = ''.obs;
  RxBool isValidRtDomisiliUpdate = false.obs;

  RxString rwDomisiliUpdate = ''.obs;
  RxBool isValidRwDomisiliUpdate = false.obs;

  RxString kecamatanDomisiliUpdate = ''.obs;
  RxBool isValidKecamatanDomisiliUpdate = false.obs;

  RxString kelurahanDomisiliUpdate = ''.obs;
  RxBool isValidKelurahanDomisiliUpdate = false.obs;

  @override
  void onInit() {
    // parsingDataAsli();
    // parsingDataDomisili();
    super.onInit();
  }

  void parsingDataAsli() {
    final data = cUserInfo.dataUser.value.alamatAsli.split(':');
    final data1 = data[0].replaceAll(' RT/RW', '');
    final data2 =
        data[1].replaceAll(' KEL/DESA', '').replaceAll(' ', '').split('/');
    final data3 = data[2].replaceAll(' KECAMATAN', '');
    final data4 = data[3];
    alamatAsli(data1);
    rtrwAsli('RT.${data2[0]} RW.${data2[1]}');
    kelKecAsli(
      'Kel. ${data3.replaceAll(' ', '')} Kec. ${data4.replaceAll(' ', '')}',
    );
    kotaAsli(cUserInfo.dataUser.value.kotaAsli);
  }

  void parsingDataDomisili() {
    final data = cUserInfo.dataUser.value.alamatDomisili.split(':');
    final data1 = data[0].replaceAll(' RT/RW', '');
    final data2 =
        data[1].replaceAll(' KEL/DESA', '').replaceAll(' ', '').split('/');
    final data3 = data[2].replaceAll(' KECAMATAN', '');
    final data4 = data[3];
    alamatDomisili(data1);
    rtrwDomisili('RT.${data2[0]} RW.${data2[1]}');
    kelKecDomisili(
      'Kel. ${data3.replaceAll(' ', '')} Kec. ${data4.replaceAll(' ', '')}',
    );
    kotaDomisili(cUserInfo.dataUser.value.kotaDomisili);
    cAlamatDomisili.text = data1;
    cRtDomisili.text = data2[0];
    cRwDomisili.text = data2[1];
    cKecamatanDomisili.text = data4.replaceAll(' ', '');
    cKelurahanDomisili.text = data3.replaceAll(' ', '');
    cKotaDomisili.text = cUserInfo.dataUser.value.kotaDomisili;
  }
}
