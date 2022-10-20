import 'package:dispusip/app/modules/home/components/account_header.dart';
import 'package:dispusip/app/modules/home/components/account_menu_item.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TabAccount extends StatelessWidget {
  const TabAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Flex(
        direction: Axis.vertical,
        children: [
          const AccountHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24.w),
                child: Column(
                  children: [
                    AccountMenuItem(label: 'Profile', onTap: () {}),
                    AccountMenuItem(
                      label: 'Pengaturan',
                      onTap: () => Get.toNamed(Routes.SETTING),
                    ),
                    AccountMenuItem(label: 'Bagikan', onTap: () {}),
                    AccountMenuItem(label: 'Tentang Aplikasi', onTap: () {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
