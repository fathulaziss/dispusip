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
      child: Column(
        children: [
          DeliveryAddressCard(
            onTap: () {},
            alamat: 'Perum Gajah Mada Blok G-1 Banyuwangi',
            buttonColor: const Color(0xFFC4C4C4),
            buttonLabel: 'Tidak bisa diubah',
            kelurahan: 'Kel. Penataban Kec. Giri',
            kotaKabupaten: 'Kabupaten Banyuwangi',
            rTrW: 'RT.001 RW. 001',
            title: 'Alamat Asli (Sesuai KTP)',
          ),
          verticalSpace(50.h),
          DeliveryAddressCard(
            onTap: () => Get.toNamed(Routes.DELIVERY_ADDRESS_EDIT),
            alamat: 'Perum Gajah Mada Blok G-1 Banyuwangi',
            buttonColor: AppColor.primaryColor,
            buttonLabel: 'Ubah',
            kelurahan: 'Kel. Penataban Kec. Giri',
            kotaKabupaten: 'Kabupaten Banyuwangi',
            rTrW: 'RT.001 RW. 001',
            title: 'Domisili',
          ),
        ],
      ),
    );
  }
}
