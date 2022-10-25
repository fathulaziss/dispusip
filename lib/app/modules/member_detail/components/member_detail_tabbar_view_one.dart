import 'package:dispusip/app/modules/member_detail/controllers/member_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MemberDetailTabbarViewOne extends GetView<MemberDetailController> {
  const MemberDetailTabbarViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.all(30.w),
        child: Center(
          child: QrImage(
            data: controller.cUserInfo.dataUser.value.nomorAnggota,
            gapless: false,
            embeddedImage: const AssetImage('assets/logos/logo_banyuwangi.png'),
            embeddedImageStyle: QrEmbeddedImageStyle(
              size: Size(40.w, 40.w),
            ),
          ),
        ),
      ),
    );
  }
}
