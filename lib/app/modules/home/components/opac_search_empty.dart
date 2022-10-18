import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpacSearchEmpty extends StatelessWidget {
  const OpacSearchEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox.square(
          dimension: 97.w,
          child: Image.asset(AppAsset.image('img_search_empty.png')),
        ),
        verticalSpace(Insets.lg),
        Text(
          'Tidak ada koleksi yang ditemukan, silahkan\ngunakan kata kunci atau filter lain',
          style: TextStyles.text,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
