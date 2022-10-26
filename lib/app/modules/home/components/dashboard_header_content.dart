import 'package:dispusip/app/modules/home/components/dashboard_header_one.dart';
import 'package:dispusip/app/modules/home/components/dashboard_header_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardHeaderContent extends StatelessWidget {
  const DashboardHeaderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxHeight < 319.w
            ? const DashboardHeaderTwo()
            : const DashboardHeaderOne();
      },
    );
  }
}
