import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';

class UnderDevelopmentView extends StatelessWidget {
  const UnderDevelopmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Image.asset(AppAsset.image('img_under_development.png')),
      ),
    );
  }
}
