import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardMemberTwo extends GetView<UserInfoController> {
  const CardMemberTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CardApp(
        margin: EdgeInsets.symmetric(horizontal: 22.w),
        padding: EdgeInsets.zero,
        width: double.infinity,
        height: 86.w,
        radius: 15.w,
        color: AppColor.blue,
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
                  ),
                  padding: EdgeInsets.symmetric(vertical: Insets.med),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: Insets.lg,
                                vertical: Insets.xs,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.dataUser.value.namaLengkap,
                                    style: TextStyles.title.copyWith(
                                      fontSize: 14.w,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
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
              ],
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 118.w,
                height: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.w),
                    topRight: Radius.circular(15.w),
                  ),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  controller.statusUser.value,
                  style: TextStyles.desc.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            if (controller.dataUser.value.namaLengkap.isNotEmpty)
              Positioned(
                right: 10.w,
                bottom: 20.w,
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.MEMBER_DETAIL),
                  child: CardApp(
                    width: 90.w,
                    height: 20.w,
                    radius: 25.w,
                    padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                    constraints: BoxConstraints(minHeight: 20.w),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Detail Kartu',
                          style: TextStyles.desc.copyWith(fontSize: 10.w),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 12.w)
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
