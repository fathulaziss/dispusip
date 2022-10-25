import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/utils/format_date_time.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProfileController extends GetxController {
  final cUserInfo = Get.find<UserInfoController>();

  final cNomorAnggota = TextEditingController();
  final cNamaLengkap = TextEditingController();
  final cKotaDomisili = TextEditingController();
  final cEmail = TextEditingController();
  final cTempatTanggalLahir = TextEditingController();
  final cNoHp = TextEditingController();
  final cStatusAnggota = TextEditingController();
  final cAlamat = TextEditingController();

  @override
  void onInit() {
    cNomorAnggota.text = cUserInfo.dataUser.value.nomorAnggota;
    cNamaLengkap.text = cUserInfo.dataUser.value.namaLengkap;
    cKotaDomisili.text = cUserInfo.dataUser.value.kotaDomisili;
    cEmail.text = cUserInfo.dataUser.value.email;
    cTempatTanggalLahir.text =
        '${cUserInfo.dataUser.value.tempatLahir}, ${FormatDateTime.format(value: DateTime.parse(cUserInfo.dataUser.value.tanggalLahir), format: DateFormat('dd-MM-yyyy'))}';
    cNoHp.text = cUserInfo.dataUser.value.nomorHP;
    cStatusAnggota.text = cUserInfo.dataUser.value.statusAnggota;
    cAlamat.text = cUserInfo.dataUser.value.alamatAsli;
    super.onInit();
  }
}
