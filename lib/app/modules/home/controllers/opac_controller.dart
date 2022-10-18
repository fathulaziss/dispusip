import 'package:dispusip/app/data/data_opac_dummy.dart';
import 'package:dispusip/app/models/book_model.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpacController extends GetxController {
  RxList<BookModel> listSearch = <BookModel>[].obs;

  TextEditingController cSearch = TextEditingController();
  RxString search = ''.obs;

  List listFilter = ['Judul', 'Penerbitan', 'No. Panggil'];
  RxString selectedFilter = ''.obs;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    selectedFilter('Judul');
    getListBook();
    super.onInit();
  }

  Future<void> getListBook() async {
    try {
      isLoading(true);
      await Future.delayed(const Duration(seconds: 3));
      isLoading(false);
      final r = listOpac;
      listSearch(RxList.from(r.map((e) => BookModel.fromJson(e))));
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }

  void setSearch(String value) {
    search(value);
  }

  void searchItem() {
    AppUtils.dismissKeyboard();
    getListBook();
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
          getListBook();
          break;
        default:
          listSearch.clear();
      }
    } else {
      selectedFilter('');
      listSearch.clear();
    }
  }
}
