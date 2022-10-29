import 'package:dispusip/app/models/opac_model.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpacController extends GetxController {
  Rx<OpacModel> listOpac = OpacModel().obs;

  // RxList<BookModel> listSearch = <BookModel>[].obs;

  TextEditingController cSearch = TextEditingController();
  RxString search = ''.obs;

  List listFilter = ['Judul', 'Penerbitan', 'No. Panggil'];
  RxString selectedFilter = ''.obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    chooseFilter('Judul');
    super.onInit();
  }

  Future<void> getListOpac({String tahunTerbit = '', String judul = ''}) async {
    try {
      isLoading(true);

      final url = 'opac?terbit=$tahunTerbit&judul=$judul';
      final r = await ApiService().request(url: url, method: Method.GET);
      listOpac.value = OpacModel.fromJson(r);

      isLoading(false);
    } catch (e) {
      isLoading(false);
      // logSys(e.toString());
      rethrow;
    }
  }

  void setSearch(String value) {
    search(value);
  }

  void searchItem() {
    AppUtils.dismissKeyboard();
    getListOpac(tahunTerbit: search.value, judul: search.value);
    logSys('Hit Request Cari');
  }

  void clearSearchInput() {
    AppUtils.dismissKeyboard();
    cSearch.clear();
    search('');
  }

  void chooseFilter(String value) {
    if (value != selectedFilter.value) {
      selectedFilter(value);

      switch (value) {
        case 'Judul':
          getListOpac(judul: search.value);
          break;
        case 'Penerbitan':
          getListOpac(tahunTerbit: search.value);
          break;
        case 'No. Panggil':
          getListOpac();
          break;
      }
    } else {
      selectedFilter('');
      getListOpac();
    }
  }
}
