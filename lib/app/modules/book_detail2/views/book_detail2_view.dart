import 'package:dispusip/app/modules/book_detail2/components/book_detail2_background.dart';
import 'package:dispusip/app/modules/book_detail2/components/book_detail2_header.dart';
import 'package:dispusip/app/modules/book_detail2/controllers/book_detail2_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookDetail2View extends GetView<BookDetail2Controller> {
  const BookDetail2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.isLoading.value
            ? const LoadingIndicatorBounce()
            : Stack(
                children: [
                  const BookDetail2Background(),
                  SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          verticalSpace(32.h),
                          const BookDetail2Header(),
                          verticalSpace(10.h),
                          if (controller.data.value.photos.isNotEmpty)
                            Image.network(
                              controller.data.value.photos,
                              width: 150.w,
                              fit: BoxFit.cover,
                            )
                          else
                            Image.asset(
                              AppAsset.image('img_book_default.png'),
                              width: 150.w,
                              fit: BoxFit.cover,
                            ),
                          verticalSpace(Insets.xs),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: Insets.lg),
                            child: Text(
                              controller.data.value.title,
                              style: TextStyles.title.copyWith(
                                fontSize: 16.w,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          verticalSpace(Insets.xs),
                          Text(
                            controller.data.value.author,
                            style:
                                TextStyles.desc.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          verticalSpace(10.h),
                          CardApp(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: Insets.lg),
                            padding: EdgeInsets.symmetric(vertical: Insets.med),
                            color: AppColor.blue,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            '0',
                                            style: TextStyles.title
                                                .copyWith(color: Colors.white),
                                          ),
                                          Text(
                                            'Eksemplar',
                                            style: TextStyles.text.copyWith(
                                              fontSize: 10.w,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 1.w,
                                      height: 50.h,
                                      color: Colors.white,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            '0',
                                            style: TextStyles.title
                                                .copyWith(color: Colors.white),
                                          ),
                                          Text(
                                            'Tersedia Offline',
                                            style: TextStyles.text.copyWith(
                                              fontSize: 10.w,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 1.w,
                                      height: 50.h,
                                      color: Colors.white,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            controller.data.value.languages,
                                            style: TextStyles.title
                                                .copyWith(color: Colors.white),
                                          ),
                                          Text(
                                            'Bahasa',
                                            style: TextStyles.text.copyWith(
                                              fontSize: 10.w,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                verticalSpace(Insets.sm),
                                const Divider(color: AppColor.grey),
                                verticalSpace(10.h),
                                Text(
                                  'No. Panggil',
                                  style: TextStyles.text.copyWith(
                                    fontSize: 10.w,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  controller.data.value.callNumber,
                                  style: TextStyles.title
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          verticalSpace(Insets.lg),
                          CardApp(
                            width: double.infinity,
                            radius: 20.w,
                            padding: EdgeInsets.all(26.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Subject',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.blue),
                                ),
                                Text(
                                  controller.data.value.subject,
                                  style:
                                      TextStyles.text.copyWith(fontSize: 16.w),
                                ),
                                Text(
                                  'Kategori',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.blue),
                                ),
                                Text(
                                  controller.data.value.category,
                                  style:
                                      TextStyles.text.copyWith(fontSize: 16.w),
                                ),
                                Text(
                                  'Jenis Koleksi',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.blue),
                                ),
                                Text(
                                  controller.data.value.worksheetName,
                                  style:
                                      TextStyles.text.copyWith(fontSize: 16.w),
                                ),
                                Text(
                                  'Deskripsi Fisik',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.blue),
                                ),
                                Text(
                                  controller.data.value.physicalDescription,
                                  style:
                                      TextStyles.text.copyWith(fontSize: 16.w),
                                ),
                                Text(
                                  'Penerbitan',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.blue),
                                ),
                                Text(
                                  controller.data.value.publisher,
                                  style:
                                      TextStyles.text.copyWith(fontSize: 16.w),
                                ),
                                Text(
                                  'ISBN',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.blue),
                                ),
                                Text(
                                  controller.data.value.codeSource,
                                  style:
                                      TextStyles.text.copyWith(fontSize: 16.w),
                                ),
                                Text(
                                  'Bahasa',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.blue),
                                ),
                                Text(
                                  controller.data.value.languages,
                                  style:
                                      TextStyles.text.copyWith(fontSize: 16.w),
                                ),
                                Text(
                                  'Sinopsi / Abstract',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.blue),
                                ),
                                Text(
                                  controller.data.value.note,
                                  style:
                                      TextStyles.text.copyWith(fontSize: 16.w),
                                ),
                                verticalSpace(Get.width / 4),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: Get.width / 4,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CardApp(
                      width: Get.width / 2.2,
                      margin: EdgeInsets.only(bottom: 40.h),
                      radius: 15.w,
                      color: AppColor.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox.square(
                            dimension: 24.w,
                            child: Image.asset(AppAsset.icon('ic_cart.png')),
                          ),
                          Text(
                            'TERSEDIA OFFLINE',
                            style: TextStyles.title
                                .copyWith(color: Colors.white, fontSize: 14.w),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
