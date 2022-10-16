import 'package:dispusip/app/modules/register/controllers/register_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterGenderDropdown extends GetView<RegisterController> {
  const RegisterGenderDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.w),
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Corners.sm),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Obx(
        () => DropdownButton2(
          underline: const SizedBox(),
          customButton: Row(
            children: [
              Expanded(
                child: Text(
                  controller.selectedGender.value.isNotEmpty
                      ? controller.selectedGender.value
                      : 'Jenis Kelamin',
                  style: TextStyles.text.copyWith(
                    color: controller.selectedGender.value.isNotEmpty
                        ? AppColor.textColor
                        : AppColor.darkGrey,
                  ),
                ),
              ),
              const Icon(Icons.arrow_drop_down, color: Color(0xFFC4C4C4))
            ],
          ),
          scrollbarAlwaysShow: true,
          itemHeight: 55.w,
          dropdownMaxHeight: 55.w * controller.listGender.length,
          items: controller.listGender
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Flex(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    direction: Axis.vertical,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(item, style: TextStyles.text),
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value != null) {
              final data = value as String;
              controller.setGender(data);
            }
          },
        ),
      ),
    );
  }
}
