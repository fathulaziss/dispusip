import 'package:dispusip/app/modules/kunjungan/controllers/kunjungan_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class KunjunganKelompokDateDropdown extends GetView<KunjunganController> {
  const KunjunganKelompokDateDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tanggal Rencana Kunjungan',
          style: TextStyles.desc.copyWith(color: AppColor.primaryColor),
        ),
        InkWell(
          onTap: () {
            controller.chooseDate(context: context);
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: Insets.sm),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColor.grey)),
            ),
            child: Obx(
              () => Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                    child: SizedBox.square(
                      dimension: 18.w,
                      child: Image.asset(AppAsset.icon('ic_calendar.png')),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.selectedDate.value.isNotEmpty
                              ? controller.selectedDate.value
                              : 'Pilih Tanggal',
                          style: TextStyles.text.copyWith(
                            color: controller.selectedDate.value.isNotEmpty
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
