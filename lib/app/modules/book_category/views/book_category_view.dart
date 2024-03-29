import 'package:dispusip/app/modules/book_category/controllers/book_category_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class BookCategoryView extends GetView<BookCategoryController> {
  const BookCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PageDefaultTwo(
        titlePage: 'Kategori Buku',
        padding: EdgeInsets.zero,
        isScrollable: false,
        child: controller.isLoading.value
            ? Center(child: LoadingIndicatorBounce(size: 25.w))
            : GridView.builder(
                padding: EdgeInsets.all(15.w),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: controller.listBookCategoryData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Get.toNamed(
                      Routes.BOOK_DETAIL,
                      arguments: {
                        'id': controller.listBookCategoryData[index].id
                      },
                    ),
                    child: CardApp(
                      isShowShadows: true,
                      isOutlined: true,
                      shadows: Shadows.universal,
                      borderWidth: 0.5,
                      child: Column(
                        children: [
                          if (controller
                              .listBookCategoryData[index].photos.isNotEmpty)
                            ClipRRect(
                              borderRadius: Corners.smBorder,
                              child: Image.network(
                                controller.listBookCategoryData[index].photos,
                                height: 100.w,
                                fit: BoxFit.cover,
                              ),
                            )
                          else
                            Image.asset(
                              AppAsset.image('img_book_default.png'),
                              height: 100.w,
                              fit: BoxFit.cover,
                            ),
                          verticalSpace(Insets.xs),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              controller.listBookCategoryData[index].title,
                              textAlign: TextAlign.left,
                              style: TextStyles.desc.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.w,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          verticalSpace(Insets.xs),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              controller.listBookCategoryData[index].author,
                              textAlign: TextAlign.left,
                              style: TextStyles.desc.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.w,
                                color: AppColor.darkGrey,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
