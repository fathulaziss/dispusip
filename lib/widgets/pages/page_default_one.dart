import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageDefaultOne extends StatelessWidget {
  const PageDefaultOne({
    Key? key,
    required this.titlePage,
    required this.child,
    this.resizeToAvoidBottomInset = false,
    this.isShowFooter = false,
    this.isShowButtonBottom = false,
    this.buttonBottom = const SizedBox(),
  }) : super(key: key);

  final String titlePage;
  final Widget child;
  final bool resizeToAvoidBottomInset;
  final bool isShowFooter;
  final bool isShowButtonBottom;
  final Widget buttonBottom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      bottomNavigationBar: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 12, 24.w, 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isShowButtonBottom)
                Padding(
                  padding: EdgeInsets.only(bottom: Insets.med),
                  child: buttonBottom,
                ),
              if (isShowFooter)
                Text(
                  'Dinas Perpustakaan dan Kearsipan Kabupaten Banyuwangi',
                  style: TextStyles.desc.copyWith(color: AppColor.darkGrey),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: Get.height / 2,
            color: AppColor.primaryColor,
          ),
          Flex(
            direction: Axis.vertical,
            children: [
              verticalSpace(Insets.xxl),
              Padding(
                padding: EdgeInsets.symmetric(vertical: Insets.xxl),
                child: Image.asset(
                  AppAsset.logo('logo_dispusip_white1.png'),
                  height: 50.h,
                ),
              ),
              Text(
                titlePage,
                style: TextStyles.title
                    .copyWith(fontSize: 25.w, color: Colors.white),
              ),
              verticalSpace(Insets.med * 2),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(24.w, 56.h, 24.w, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Corners.xlRadius,
                      topRight: Corners.xlRadius,
                    ),
                    color: Colors.white,
                  ),
                  child: child,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
