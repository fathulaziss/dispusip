import 'package:dispusip/app/modules/service_policy/controllers/service_policy_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ServicePolicyView extends GetView<ServicePolicyController> {
  const ServicePolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Kebijakan Layanan',
      isShowFooter: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kebijakan Layanan',
            style: TextStyles.title.copyWith(fontSize: 21.w),
          ),
          verticalSpace(26.h),
          Text(controller.servicePolicy.value, style: TextStyles.text),
        ],
      ),
    );
  }
}
