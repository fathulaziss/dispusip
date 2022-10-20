import 'package:dispusip/app/modules/delivery_address/components/delivery_address_kecamatan_dropdown.dart';
import 'package:dispusip/app/modules/delivery_address/components/delivery_address_kelurahan_dropdown.dart';
import 'package:dispusip/app/modules/delivery_address/controllers/delivery_address_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
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
                  child: InputPrimary(
                    label: 'RT',
                    hint: '001',
                    contentPadding: EdgeInsets.all(Insets.sm),
                    inputStyle: InputStyle.line,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: InputPrimary(
                    label: 'RW',
                    hint: '007',
                    contentPadding: EdgeInsets.all(Insets.sm),
                    inputStyle: InputStyle.line,
                  ),
                ),
              )
            ],
          ),
          verticalSpace(Insets.lg),
          const DeliveryAddressKecamatanDropdown(),
          verticalSpace(Insets.lg),
          const DeliveryAddressKelurahanDropdown(),
          verticalSpace(Insets.lg),
          InputPrimary(
            label: 'Kabupaten',
            hint: 'Masukkan Kota / Kabupaten',
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
          verticalSpace(35.h),
          ButtonPrimary(label: 'SIMPAN', onTap: () {})
        ],
      ),
    );
  }
}
