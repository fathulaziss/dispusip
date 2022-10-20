import 'package:dispusip/app/modules/delivery_address/controllers/delivery_address_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DeliveryAddressKelurahanDropdown
    extends GetView<DeliveryAddressController> {
  const DeliveryAddressKelurahanDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kelurahan',
          style: TextStyles.desc.copyWith(color: AppColor.primaryColor),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: Insets.sm),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColor.grey)),
          ),
          child: Obx(
            () => DropdownButton2(
              underline: const SizedBox(),
              customButton: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.selectedKelurahan.value.isNotEmpty
                        ? controller.selectedKelurahan.value
                        : 'Pilih Kelurahan',
                    style: TextStyles.text.copyWith(
                      color: controller.selectedKelurahan.value.isNotEmpty
                          ? AppColor.textColor
                          : AppColor.darkGrey,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFFC4C4C4),
                  )
                ],
              ),
              scrollbarAlwaysShow: true,
              itemHeight: 55.w,
              dropdownMaxHeight: 55.w * controller.listKelurahan.length,
              items: controller.listKelurahan
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
                  controller.selectedKelurahan(data);
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
