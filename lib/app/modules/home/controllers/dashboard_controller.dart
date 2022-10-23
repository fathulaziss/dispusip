import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/app/data/data_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final cUserInfo = Get.find<UserInfoController>();

  RxList<Widget> dashboardMenu = <Widget>[].obs;

  @override
  void onInit() {
    getDashboardMenu();
    super.onInit();
  }

  Future<void> getDashboardMenu() async {
    final m = await DataMenu().getListMenu();
    dashboardMenu(m);
  }
}
