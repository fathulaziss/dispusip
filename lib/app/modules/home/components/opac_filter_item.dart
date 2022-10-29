import 'package:dispusip/app/modules/home/controllers/opac_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OpacFilterItem extends GetView<OpacController> {
  const OpacFilterItem({
    Key? key,
    required this.data,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final String data;
  final int index;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: onTap,
        child: CardApp(
          margin: EdgeInsets.only(
            right: index != controller.listFilter.length ? 6.w : 0,
          ),
          padding: EdgeInsets.symmetric(horizontal: Insets.sm),
          width: controller.selectedFilter.value == data
              ? data.length + 92.w
              : data.length + 74.w,
          height: 24.w,
          radius: 12.w,
          constraints: BoxConstraints(minHeight: 24.w),
          color: controller.selectedFilter.value == data
              ? AppColor.primaryColor
              : AppColor.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (controller.selectedFilter.value == data)
                Icon(Icons.check, size: 18.w, color: Colors.white),
              Text(
                data,
                style: TextStyles.desc.copyWith(
                  color: controller.selectedFilter.value == data
                      ? Colors.white
                      : AppColor.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
