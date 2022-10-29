import 'package:dispusip/app/modules/member_detail/controllers/member_detail_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class MemberDetailTabbarViewTwo extends GetView<MemberDetailController> {
  const MemberDetailTabbarViewTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(vertical: Get.width / 2),
        child: SfBarcodeGenerator(
          value: controller.cUserInfo.dataUser.value.nomorAnggota,
          textStyle: TextStyles.desc,
          showValue: true,
        ),
      ),
    );
  }
}
