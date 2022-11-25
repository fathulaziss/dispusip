import 'package:dispusip/app/modules/warna_pelangi/controllers/warna_pelangi_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WarnaPelangiUploadBerkas extends GetView<WarnaPelangiController> {
  const WarnaPelangiUploadBerkas({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          controller.setBerkas();
        },
        child: CardApp(
          isOutlined: true,
          outlineColor: Colors.grey.shade300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  controller.berkasPath.isNotEmpty
                      ? controller.berkas.value.name
                      : 'Upload Berkas / Surat Permohonan',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.text.copyWith(
                    color: controller.berkasPath.isNotEmpty
                        ? AppColor.textColor
                        : AppColor.darkGrey,
                  ),
                ),
              ),
              horizontalSpace(Insets.xs),
              SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_judul_buku.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
