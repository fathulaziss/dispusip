import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.w),
            child: Image.asset(
              AppAsset.image('img_profile.png'),
              height: 50.w,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(Insets.med),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 50.h,
              child: Align(
                child: Text(
                  'Hai, Ramadian Tuntas Laksana',
                  style: TextStyles.title
                      .copyWith(fontSize: 16.w, color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          horizontalSpace(Insets.med),
          Container(
            width: 50.w,
            height: 50.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white),
            ),
            child: SizedBox.square(
              dimension: 50.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox.square(
                    dimension: 24.w,
                    child: Image.asset(AppAsset.icon('ic_notification.png')),
                  ),
                  Positioned(
                    right: 6,
                    bottom: 27,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.red,
                      ),
                      padding: EdgeInsets.all(2.w),
                      child: Text(
                        '99+',
                        style: TextStyles.text
                            .copyWith(color: Colors.white, fontSize: 8.w),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
