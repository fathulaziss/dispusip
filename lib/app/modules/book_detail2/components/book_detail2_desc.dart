import 'package:dispusip/app/modules/book_detail2/controllers/book_detail2_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookDetail2Desc extends GetView<BookDetail2Controller> {
  const BookDetail2Desc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: Insets.xl),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Subject',
            style: TextStyles.desc.copyWith(color: AppColor.blue),
          ),
          Text(
            controller.data.value.subject,
            style: TextStyles.text.copyWith(fontSize: 16.w),
          ),
          Text(
            'Kategori',
            style: TextStyles.desc.copyWith(color: AppColor.blue),
          ),
          Text(
            controller.data.value.category,
            style: TextStyles.text.copyWith(fontSize: 16.w),
          ),
          Text(
            'Jenis Koleksi',
            style: TextStyles.desc.copyWith(color: AppColor.blue),
          ),
          Text(
            controller.data.value.worksheetName,
            style: TextStyles.text.copyWith(fontSize: 16.w),
          ),
          Text(
            'Deskripsi Fisik',
            style: TextStyles.desc.copyWith(color: AppColor.blue),
          ),
          Text(
            controller.data.value.physicalDescription,
            style: TextStyles.text.copyWith(fontSize: 16.w),
          ),
          Text(
            'Penerbitan',
            style: TextStyles.desc.copyWith(color: AppColor.blue),
          ),
          Text(
            controller.data.value.publisher,
            style: TextStyles.text.copyWith(fontSize: 16.w),
          ),
          Text(
            'ISBN',
            style: TextStyles.desc.copyWith(color: AppColor.blue),
          ),
          Text(
            controller.data.value.codeSource,
            style: TextStyles.text.copyWith(fontSize: 16.w),
          ),
          Text(
            'Bahasa',
            style: TextStyles.desc.copyWith(color: AppColor.blue),
          ),
          Text(
            controller.data.value.languages,
            style: TextStyles.text.copyWith(fontSize: 16.w),
          ),
          Text(
            'Sinopsi / Abstract',
            style: TextStyles.desc.copyWith(color: AppColor.blue),
          ),
          Text(
            controller.data.value.note,
            style: TextStyles.text.copyWith(fontSize: 16.w),
          ),
          verticalSpace(Insets.xxl * 3),
        ],
      ),
    );
  }
}
