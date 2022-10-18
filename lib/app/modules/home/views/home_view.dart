import 'package:dispusip/app/modules/home/components/custom_bottom_navbar.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/app/modules/home/tabs/tab_account.dart';
import 'package:dispusip/app/modules/home/tabs/tab_dashboard.dart';
import 'package:dispusip/app/modules/home/tabs/tab_history.dart';
import 'package:dispusip/app/modules/home/tabs/tab_home.dart';
import 'package:dispusip/app/modules/home/tabs/tab_opac.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: controller.backgroundColor.value,
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: controller.selectedPage.value,
          onTap: (index) {
            controller.navigation(index);
          },
        ),
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            TabHome(),
            TabOpac(),
            TabDashboard(),
            TabHistory(),
            TabAccount(),
          ],
        ),
      ),
    );
  }
}
