import 'package:dispusip/app/modules/delivery_address/controllers/delivery_address_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:dispusip/widgets/inputs/input_number.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DeliveryAddressEditView extends GetView<DeliveryAddressController> {
  const DeliveryAddressEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Edit Alamat Domisili',
      isShowFooter: true,
      child: Column(
        children: [
          InputPrimary(
            label: 'Alamat',
            hint: 'Masukkan Alamat',
            controller: controller.cAlamatDomisili,
            onChanged: (value) {},
            validation: (value) => true,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Insets.sm),
              child: SizedBox.square(
                dimension: 18.w,
                child: Image.asset(AppAsset.icon('ic_location.png')),
              ),
            ),
          ),
          verticalSpace(Insets.lg),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: InputNumber(
                    label: 'RT',
                    hint: '001',
                    controller: controller.cRtDomisili,
                    value: (value) {},
                    validation: (value) => true,
                    contentPadding: EdgeInsets.all(Insets.sm),
                    inputStyle: InputStyle.line,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: InputNumber(
                    label: 'RW',
                    hint: '007',
                    controller: controller.cRwDomisili,
                    value: (value) {},
                    validation: (value) => true,
                    contentPadding: EdgeInsets.all(Insets.sm),
                    inputStyle: InputStyle.line,
                  ),
                ),
              )
            ],
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Kecamatan',
            hint: 'Masukkan Kecamatan',
            controller: controller.cKecamatanDomisili,
            onChanged: (value) {},
            validation: (value) => true,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Kelurahan',
            hint: 'Masukkan Kelurahan',
            controller: controller.cKelurahanDomisili,
            onChanged: (value) {},
            validation: (value) => true,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Kabupaten',
            hint: 'Masukkan Kota / Kabupaten',
            controller: controller.cKotaDomisili,
            onChanged: (value) {},
            validation: (value) => true,
            contentPadding: EdgeInsets.all(Insets.sm),
            inputStyle: InputStyle.line,
          ),
          verticalSpace(35.h),
          ButtonPrimary(label: 'SIMPAN', onTap: () {})
        ],
      ),
    );
  }
}
