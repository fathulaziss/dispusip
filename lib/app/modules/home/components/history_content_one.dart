import 'package:dispusip/app/modules/home/components/history_card_item.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryContentOne extends StatelessWidget {
  const HistoryContentOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            const HistoryCardItem(
              author: 'Tere Liye ; BPBI Abiyoso',
              isDone: false,
              title:
                  'Hujan Edisi 2 (Buku Bicara) / Tere Liye ; Alih Media, BPBI Abiyoso',
            ),
            verticalSpace(Insets.lg),
            const HistoryCardItem(
              author: 'Tere Liye ; BPBI Abiyoso',
              isDone: true,
              title: 'Nebula / Tere Liye',
            ),
          ],
        ),
      ),
    );
  }
}
