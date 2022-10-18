import 'package:dispusip/app/modules/home/components/opac_filter_item.dart';
import 'package:dispusip/app/modules/home/controllers/opac_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/inputs/input_primary.dart';
import 'package:dispusip/widgets/others/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OpacHeader extends GetView<OpacController> {
  const OpacHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        height: Get.height / 3,
        margin: EdgeInsets.only(bottom: Insets.med),
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        decoration:
            BoxDecoration(color: Colors.white, boxShadow: Shadows.universal2),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(49.h),
            Row(
              children: [
                Expanded(
                  child: InputPrimary(
                    hint: 'Cari buku pada OPAC',
                    controller: controller.cSearch,
                    textInputAction: TextInputAction.search,
                    onChanged: controller.setSearch,
                    onSubmitted: (value) => controller.searchItem(),
                    validation: (value) => true,
                    outlineColor: AppColor.primaryColor,
                    prefixIcon: IconButton(
                      onPressed: () => controller.searchItem(),
                      padding: EdgeInsets.symmetric(horizontal: Insets.sm),
                      constraints:
                          BoxConstraints(minWidth: 20.w, minHeight: 20.w),
                      icon: SizedBox.square(
                        dimension: 20.w,
                        child: Image.asset(AppAsset.icon('ic_search.png')),
                      ),
                    ),
                    suffixIcon: controller.search.value.isNotEmpty
                        ? TextButton(
                            onPressed: () => controller.clearSearchInput(),
                            style: TextButton.styleFrom(
                              padding:
                                  EdgeInsets.symmetric(horizontal: Insets.med),
                              minimumSize: Size(18.w, 18.w),
                              alignment: Alignment.center,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              'X',
                              style: TextStyles.title
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                          )
                        : const SizedBox(),
                  ),
                ),
                horizontalSpace(Insets.med),
                SizedBox.square(
                  dimension: 20.w,
                  child: Image.asset(
                    AppAsset.icon('ic_filter.png'),
                    color: AppColor.primaryColor,
                  ),
                )
              ],
            ),
            verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter Pencarian',
                  style: TextStyles.title
                      .copyWith(fontSize: 16.w, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: Text('X', style: TextStyles.text),
                ),
              ],
            ),
            verticalSpace(Insets.lg),
            SizedBox(
              width: double.infinity,
              height: 24.h,
              child: Row(
                children: [
                  Text(
                    'Berdasarkan',
                    style: TextStyles.title
                        .copyWith(fontSize: 16.w, fontWeight: FontWeight.w500),
                  ),
                  horizontalSpace(Insets.xs),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.listFilter.length,
                      itemBuilder: (context, index) {
                        return OpacFilterItem(
                          data: controller.listFilter[index],
                          index: index,
                          onTap: () {
                            controller
                                .chooseFilter(controller.listFilter[index]);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(Insets.xl),
            if (controller.listSearch.isNotEmpty)
              CustomRichText(
                child: [
                  const TextSpan(text: 'Ditemukan '),
                  TextSpan(
                    text: '${controller.listSearch.length} ',
                    style:
                        TextStyles.desc.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: 'Buku dari '),
                  TextSpan(
                    text: '1189956 ',
                    style:
                        TextStyles.desc.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const TextSpan(text: 'Koleksi'),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
