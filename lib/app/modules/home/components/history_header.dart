import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(24.w, 40.w, 24.w, 20.h),
          decoration:
              BoxDecoration(color: Colors.white, boxShadow: Shadows.universal2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Riwayat Peminjaman',
                style: TextStyles.title.copyWith(fontSize: 16.w),
              ),
              SizedBox.square(
                dimension: 24.w,
                child: Image.asset(
                  AppAsset.icon('ic_filter.png'),
                  color: AppColor.primaryColor,
                ),
              )
            ],
          ),
        ),
        verticalSpace(Insets.xs),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Filter Riwayat', style: TextStyles.text),
              Text('X', style: TextStyles.text),
            ],
          ),
        )
      ],
    );
  }
}
