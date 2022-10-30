import 'package:dispusip/app/modules/book_detail/components/book_detail_header_one.dart';
import 'package:dispusip/app/modules/book_detail/components/book_detail_header_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailHeaderContent extends StatelessWidget {
  const BookDetailHeaderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxHeight < 485.w
            ? const BookDetailHeaderTwo()
            : const BookDetailHeaderOne();
      },
    );
  }
}
