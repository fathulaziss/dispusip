import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageDefaultTwo extends StatelessWidget {
  const PageDefaultTwo({
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
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Text(
            titlePage,
            style: TextStyles.title
                .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 24.h),
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
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(child: child),
        ),
      ),
    );
  }
}
