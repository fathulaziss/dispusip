import 'package:dispusip/app/modules/book_detail2/controllers/book_detail2_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BookDetail2Card extends GetView<BookDetail2Controller> {
  const BookDetail2Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardApp(
      width: double.infinity,
      margin: EdgeInsets.all(Insets.lg),
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
                      style: TextStyles.title.copyWith(
                        color: Colors.white,
                        fontSize: 14.w,
                      ),
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
                      style: TextStyles.title.copyWith(
                        color: Colors.white,
                        fontSize: 14.w,
                      ),
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
                      style: TextStyles.title.copyWith(
                        color: Colors.white,
                        fontSize: 14.w,
                      ),
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
          const Divider(color: AppColor.grey),
          Text(
            'No. Panggil',
            style: TextStyles.text.copyWith(
              fontSize: 10.w,
              color: Colors.white,
            ),
          ),
          Text(
            controller.data.value.callNumber,
            style: TextStyles.title.copyWith(
              color: Colors.white,
              fontSize: 14.w,
            ),
          ),
        ],
      ),
    );
  }
}
