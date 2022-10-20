import 'package:get/get.dart';

class DeliveryAddressController extends GetxController {
  List listKecamatan = ['Giri1', 'Giri2', 'Giri3'];
  List listKelurahan = ['Penataban1', 'Penataban2', 'Penataban3'];

  RxString selectedKecamtan = ''.obs;
  RxString selectedKelurahan = ''.obs;

  void setKecamatan(String value) {
    selectedKecamtan(value);
  }

  void setKelurahan(String value) {
    selectedKelurahan(value);
  }
}
