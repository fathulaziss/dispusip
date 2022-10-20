import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardMember extends StatelessWidget {
  const CardMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardApp(
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
                padding: EdgeInsets.symmetric(vertical: Insets.sm),
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
                                  'Ramadian Tuntas Laksana',
                                  style: TextStyles.title.copyWith(
                                    fontSize: 16.w,
                                    color: Colors.white,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                verticalSpace(Insets.xs),
                                Text(
                                  'contact.katarama@gmail.com',
                                  style: TextStyles.desc.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
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
                child: Image.asset(
                  AppAsset.image('img_barcode.png'),
                  width: 322.w,
                  height: 86.h,
                  fit: BoxFit.fill,
                ),
              ),
              verticalSpace(Insets.sm),
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
            right: 20,
            top: 45,
            child: ButtonPrimary(
              onTap: () => Get.toNamed(Routes.UNDER_DEVELOPMENT),
              height: 25.h,
              width: 60.w,
              label: 'Detail',
              textStyle: TextStyles.desc.copyWith(fontWeight: FontWeight.w500),
              color: AppColor.orange,
              radius: 4.w,
            ),
          ),
        ],
      ),
    );
  }
}
