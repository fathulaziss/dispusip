import 'package:dispusip/app/modules/rest_area/controllers/rest_area_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RestAreaTanggalKunjungan extends GetView<RestAreaController> {
  const RestAreaTanggalKunjungan({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          controller.chooseDate(context: context);
        },
        child: CardApp(
          isOutlined: true,
          outlineColor: Colors.grey.shade300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                controller.tanggalKunjungan.isNotEmpty
                    ? controller.tanggalKunjungan.value
                    : 'Pilih Tanggal Kunjungan',
                style: TextStyles.text.copyWith(
                  color: controller.tanggalKunjungan.isNotEmpty
                      ? AppColor.textColor
                      : AppColor.darkGrey,
                ),
              ),
              SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_calendar.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
