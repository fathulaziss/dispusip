import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class CardMember extends GetView<UserInfoController> {
  const CardMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CardApp(
        margin: EdgeInsets.symmetric(horizontal: 22.w),
        padding: EdgeInsets.zero,
        width: double.infinity,
        height: 200.h,
        radius: 15.w,
        color: Colors.white,
        child: Stack(
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.w),
                      topRight: Radius.circular(15.w),
                    ),
                    color: AppColor.blue,
                  ),
                  padding: EdgeInsets.symmetric(vertical: Insets.med),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: Insets.lg),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.dataUser.value.namaLengkap,
                                    style: TextStyles.title.copyWith(
                                      fontSize: 16.w,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  verticalSpace(Insets.xs),
                                  Text(
                                    controller.dataUser.value.email,
                                    style: TextStyles.desc.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 118.w),
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpace(Insets.sm),
                Expanded(
                  child: SfBarcodeGenerator(
                    value: controller.dataUser.value.nomorAnggota,
                    textStyle: TextStyles.text,
                    textSpacing: 0,
                    showValue: true,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 118.w,
                height: 38.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.w),
                    topRight: Radius.circular(15.w),
                  ),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Mahasiswa',
                  style: TextStyles.desc.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Positioned(
              right: 20.w,
              top: 40.w,
              child: ButtonPrimary(
                onTap: () => Get.toNamed(Routes.MEMBER_DETAIL),
                height: 25.h,
                width: 60.w,
                label: 'Detail',
                textStyle:
                    TextStyles.desc.copyWith(fontWeight: FontWeight.w500),
                color: AppColor.orange,
                radius: 4.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
