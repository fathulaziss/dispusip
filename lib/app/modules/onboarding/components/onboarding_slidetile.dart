import 'package:dispusip/app/modules/onboarding/models/onboarding_model.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingSlidetile extends StatelessWidget {
  const OnboardingSlidetile({Key? key, required this.data}) : super(key: key);

  final OnboardingModel data;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        SizedBox(
          width: double.infinity,
          height: 280.h,
          child: Image.asset(AppAsset.image(data.image)),
        ),
        verticalSpace(40.h),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data.title,
                style: TextStyles.title,
                textAlign: TextAlign.center,
              ),
              verticalSpace(25.h),
              Text(
                data.desc,
                style: TextStyles.desc,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
