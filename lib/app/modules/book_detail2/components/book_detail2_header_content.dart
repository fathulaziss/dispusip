import 'package:dispusip/app/modules/book_detail2/components/book_detail2_header_one.dart';
import 'package:dispusip/app/modules/book_detail2/components/book_detail2_header_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetail2HeaderContent extends StatelessWidget {
  const BookDetail2HeaderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxHeight < 475.w
            ? const BookDetail2HeaderTwo()
            : const BookDetail2HeaderOne();
      },
    );
  }
}
