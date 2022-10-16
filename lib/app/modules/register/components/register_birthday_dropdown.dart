import 'package:dispusip/app/modules/register/controllers/register_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterBirthdayDropdown extends GetView<RegisterController> {
  const RegisterBirthdayDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.chooseDate(context: context);
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10.w),
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Corners.sm),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Obx(
          () => Row(
            children: [
              Expanded(
                child: Text(
                  'Tanggal Lahir',
                  style: TextStyles.text.copyWith(
                    color: controller.selectedBirthday.value.isNotEmpty
                        ? AppColor.textColor
                        : AppColor.darkGrey,
                  ),
                ),
              ),
              if (controller.selectedBirthday.isNotEmpty)
                Text(
                  controller.selectedBirthday.value,
                  style: TextStyles.text.copyWith(fontWeight: FontWeight.w600),
                )
              else
                const Icon(Icons.arrow_drop_down, color: Color(0xFFC4C4C4))
            ],
          ),
        ),
      ),
    );
  }
}
