// ignore_for_file: avoid_redundant_argument_values

import 'package:dispusip/app/modules/kritik_saran/controllers/kritik_saran_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class KritikSaranView extends GetView<KritikSaranController> {
  const KritikSaranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Informasi & Saran',
      isShowFooter: true,
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Silahkan sampaikan saran Anda dengan mengisi form berikut',
              style: TextStyles.desc,
            ),
            verticalSpace(Insets.xxl),
            CardApp(
              width: double.infinity,
              height: 145.h,
              isShowShadows: true,
              isOutlined: true,
              outlineColor: AppColor.darkGrey,
              radius: 15.w,
              shadows: [
                BoxShadow(
                  color: AppColor.primaryColor.withOpacity(0.5),
                  spreadRadius: 0.15,
                  blurRadius: 10,
                  offset: const Offset(1, 2),
                ),
              ],
              child: TextField(
                minLines: null,
                maxLines: null,
                autocorrect: false,
                controller: controller.cKritikSaran,
                onChanged: controller.setKritikSaran,
                style: TextStyles.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Isikan Saran Anda disini....',
                  hintStyle: TextStyles.text.copyWith(color: AppColor.darkGrey),
                ),
              ),
            ),
            verticalSpace(Insets.xxl),
            ButtonPrimary(
              onTap: controller.submit,
              isLoading: controller.isLoading.value,
              enabled: controller.isValidKritikSaran.value,
              label: 'KIRIM SARAN',
            )
          ],
        ),
      ),
    );
  }
}
