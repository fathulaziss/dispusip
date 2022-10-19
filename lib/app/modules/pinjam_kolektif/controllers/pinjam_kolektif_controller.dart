import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PinjamKolektifController extends GetxController {
  List listEksemplar = ['100 Eksemplar', '200 Eksemplar'];

  RxString selectedEksemplar = ''.obs;

  RxString selectedDate = ''.obs;

  void setEksemplar(String value) {
    selectedEksemplar(value);
  }

  void setDate(String value) {
    selectedDate(value);
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
