import 'package:dispusip/app/modules/book_category/controllers/book_category_controller.dart';
import 'package:dispusip/styles/styles.dart';
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
        child: controller.isLoading.value
            ? LoadingIndicatorBounce(size: 25.w)
            : GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3,
                  mainAxisSpacing: 20,
                ),
                itemCount: controller.listBookCategoryData.length,
                itemBuilder: (context, index) {
                  return CardApp(
                    child: Text(
                      controller.listBookCategoryData[index].title,
                      style: TextStyles.text,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
