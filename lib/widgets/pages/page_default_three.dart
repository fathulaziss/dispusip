import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PageDefaultThree extends StatelessWidget {
  const PageDefaultThree({
    required this.titlePage,
    required this.child,
    this.resizeToAvoidBottomInset = false,
    this.isScrollable = true,
    Key? key,
  }) : super(key: key);

  final String titlePage;
  final Widget child;
  final bool resizeToAvoidBottomInset;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child:
              Text(titlePage, style: TextStyles.title.copyWith(fontSize: 16.w)),
        ),
        leading: IconButton(
          onPressed: Get.back,
          icon:
              Icon(Icons.arrow_back_ios, size: 20.w, color: AppColor.textColor),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: Image.asset(
              AppAsset.icon('ic_filter.png'),
              width: 24.w,
              color: AppColor.primaryColor,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        shadowColor: AppColor.grey.withOpacity(0.5),
      ),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: SizedBox(
        width: double.infinity,
        child: isScrollable ? SingleChildScrollView(child: child) : child,
      ),
    );
  }
}
