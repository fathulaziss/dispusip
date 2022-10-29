import 'package:dispusip/app/modules/home/components/dashboard_notification.dart';
import 'package:dispusip/app/modules/home/components/dashboard_photo_profile.dart';
import 'package:dispusip/app/modules/home/controllers/dashboard_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardInformasi extends GetView<DashboardController> {
  const DashboardInformasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Row(
          children: [
            const DashboardPhotoProfile(),
            horizontalSpace(Insets.med),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 50.w,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hai, ${controller.cUserInfo.dataUser.value.namaLengkap}',
                    style: TextStyles.title
                        .copyWith(fontSize: 14.w, color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            horizontalSpace(Insets.med),
            const DashboardNotification(),
          ],
        ),
      ),
    );
  }
}
