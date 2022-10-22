import 'package:dispusip/app/models/book_model2.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeNewCollectionCard extends StatelessWidget {
  const HomeNewCollectionCard({
    Key? key,
    required this.data,
    required this.margin,
  }) : super(key: key);

  final BookModel2 data;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return CardApp(
      isShowShadows: true,
      margin: margin,
      width: 150.w,
      padding: EdgeInsets.zero,
      radius: 10.w,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: CardApp(
              color: AppColor.grey,
              radius: 10.w,
              child: data.cover.isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10.w),
                      child: Image.network(data.cover, fit: BoxFit.fill),
                    )
                  : const SizedBox(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width,
                  height: 18.h,
                  child: Text(
                    data.title,
                    style:
                        TextStyles.desc.copyWith(fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                verticalSpace(Insets.xs),
                SizedBox(
                  width: Get.width,
                  height: 15.h,
                  child: Text(
                    data.author,
                    style: TextStyles.text
                        .copyWith(fontSize: 10.w, color: AppColor.darkGrey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
