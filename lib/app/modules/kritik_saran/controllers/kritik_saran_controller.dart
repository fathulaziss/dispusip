import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/others/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KritikSaranController extends GetxController {
  final cKritikSaran = TextEditingController();
  RxString kritikSaran = ''.obs;
  RxBool isValidKritikSaran = false.obs;

  RxBool isLoading = false.obs;

  void setKritikSaran(String value) {
    kritikSaran(value);
    if (kritikSaran.value.isNotEmpty) {
      isValidKritikSaran(true);
    } else {
      isValidKritikSaran(false);
    }
  }

  void resetForm() {
    cKritikSaran.clear();
    kritikSaran('');
    isValidKritikSaran(false);
  }

  Future<void> submit() async {
    try {
      isLoading(true);

      final parameters = {'saran': kritikSaran.value};

      final r = await ApiService().request(
        url: 'saran/postsaran',
        method: Method.POST,
        parameters: parameters,
      );

      isLoading(false);

      showPopUpInfo(title: 'Success', description: r['message']);
      resetForm();
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}
