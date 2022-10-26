import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardPhotoProfile extends GetView<DashboardController> {
  const DashboardPhotoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.cUserInfo.dataUser.value.photo.isNotEmpty
          ? ClipRRect(
              borderRadius: BorderRadius.circular(50.w),
              child: Image.network(
                controller.cUserInfo.dataUser.value.photo,
                width: 50.w,
                height: 50.w,
                fit: BoxFit.cover,
              ),
            )
          : Container(
              width: 50.w,
              height: 50.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.grey,
              ),
              child: Icon(
                Icons.person_rounded,
                size: 40.w,
                color: AppColor.blue,
              ),
            ),
    );
  }
}
