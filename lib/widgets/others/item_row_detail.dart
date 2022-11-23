import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemRowDetail extends StatelessWidget {
  const ItemRowDetail({
    required this.desc,
    this.isNumbering = true,
    this.title = '',
    super.key,
  });

  final String title;
  final String desc;
  final bool isNumbering;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isNumbering)
          SizedBox.square(
            dimension: 20.w,
            child: Text(
              title,
              style: TextStyles.text,
              textAlign: TextAlign.center,
            ),
          )
        else
          SizedBox.square(
            dimension: 20.w,
            child: Icon(Icons.circle, color: Colors.black, size: 5.w),
          ),
        Expanded(
          child: Text(desc, style: TextStyles.text),
        )
      ],
    );
  }
}
