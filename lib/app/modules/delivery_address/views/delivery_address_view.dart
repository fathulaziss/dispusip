import 'package:dispusip/app/modules/delivery_address/components/delivery_address_card.dart';
import 'package:dispusip/app/modules/delivery_address/controllers/delivery_address_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class DeliveryAddressView extends GetView<DeliveryAddressController> {
  const DeliveryAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Alamat Pengantaran',
      isShowFooter: true,
      child: Obx(
        () => Column(
          children: [
            DeliveryAddressCard(
              onTap: () {},
              buttonColor: const Color(0xFFC4C4C4),
              buttonLabel: 'Tidak bisa diubah',
              alamat: controller.cUserInfo.dataUser.value.alamatAsli,
              rTrW:
                  'RT. ${controller.cUserInfo.dataUser.value.rTAsli} RW. ${controller.cUserInfo.dataUser.value.rWAsli}',
              kelKec:
                  'Kel. ${controller.cUserInfo.dataUser.value.kelurahanAsli} Kec.${controller.cUserInfo.dataUser.value.kecamatanAsli}',
              kotaKabupaten: controller.cUserInfo.dataUser.value.kotaAsli,
              title: 'Alamat Asli (Sesuai KTP)',
            ),
            verticalSpace(50.h),
            DeliveryAddressCard(
              onTap: () {
                controller.setDataDomisili();
                Get.toNamed(Routes.DELIVERY_ADDRESS_EDIT);
              },
              buttonColor: AppColor.primaryColor,
              buttonLabel: 'Ubah',
              alamat: controller.cUserInfo.dataUser.value.alamatDomisili,
              rTrW:
                  'RT. ${controller.cUserInfo.dataUser.value.rTDomisili} RW. ${controller.cUserInfo.dataUser.value.rWDomisili}',
              kelKec:
                  'Kel. ${controller.cUserInfo.dataUser.value.kelurahanDomisili} Kec.${controller.cUserInfo.dataUser.value.kecamatanDomisili}',
              kotaKabupaten: controller.cUserInfo.dataUser.value.kotaDomisili,
              title: 'Domisili',
            ),
          ],
        ),
      ),
    );
  }
}
