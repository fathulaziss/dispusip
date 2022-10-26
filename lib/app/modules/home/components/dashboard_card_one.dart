import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_member_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardCardOne extends StatelessWidget {
  const DashboardCardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(Insets.med),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Text(
            'Kartu Anggota Virtual',
            style:
                TextStyles.title.copyWith(color: Colors.white, fontSize: 16.w),
          ),
        ),
        verticalSpace(Insets.med),
        const CardMemberOne(),
        verticalSpace(Insets.lg),
      ],
    );
  }
}
