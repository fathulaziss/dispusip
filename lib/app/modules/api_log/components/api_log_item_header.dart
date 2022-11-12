import 'package:dispusip/app/modules/api_log/components/api_log_card_status.dart';
import 'package:dispusip/app/modules/api_log/components/api_log_text_copy.dart';
import 'package:dispusip/app/modules/api_log/models/api_log_model.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/format_date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ApiLogItemHeader extends StatelessWidget {
  const ApiLogItemHeader({Key? key, required this.data}) : super(key: key);

  final ApiLogModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.sm, vertical: Insets.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ApiLogCardStatus(
                status: data.method,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ApiLogCardStatus(
                  status: FormatDateTime.format(value: data.timestamp),
                ),
              ),
              if (data.error.isEmpty)
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 16.w,
                )
              else
                Icon(
                  Icons.error_outline_outlined,
                  color: Colors.red,
                  size: 16.w,
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: ApiLogTextCopy(
              text: data.url,
              style: TextStyle(
                color: Colors.blue,
                fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                fontSize: 13.w,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
