import 'package:dispusip/app/modules/api_log/components/api_log_text_copy.dart';
import 'package:dispusip/app/modules/api_log/models/api_log_model.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ApiLogItemBody extends StatelessWidget {
  const ApiLogItemBody({Key? key, required this.data}) : super(key: key);

  final ApiLogModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (data.payload != 'null')
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: Insets.xs),
                  padding: EdgeInsets.symmetric(
                    horizontal: Insets.sm,
                    vertical: Insets.xs,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: Corners.medBorder,
                    color: Colors.indigo.withOpacity(.3),
                  ),
                  child: Text(
                    'PAYLOAD',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ApiLogTextCopy(
                  text: data.payload,
                  style: TextStyle(
                    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    fontSize: 13.w,
                  ),
                ),
              ],
            ),
          )
        else
          const SizedBox(),
        if (data.response.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: Insets.xs,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Insets.sm,
                    vertical: Insets.xs,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: Corners.smBorder,
                    color: Colors.green.withOpacity(.3),
                  ),
                  child: Text(
                    'RESPONSE',
                    style: TextStyles.desc.copyWith(
                      color: Colors.green.shade700,
                    ),
                  ),
                ),
                ApiLogTextCopy(
                  text: data.response,
                  style: TextStyle(
                    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    fontSize: 13.w,
                  ),
                )
              ],
            ),
          )
        else
          const SizedBox(),
        if (data.error.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: Insets.xs,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Insets.sm,
                    vertical: Insets.xs,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: Corners.smBorder,
                    color: Colors.red.withOpacity(.3),
                  ),
                  child: Text(
                    'ERROR',
                    style: TextStyles.desc.copyWith(
                      color: Colors.red.shade700,
                    ),
                  ),
                ),
                ApiLogTextCopy(
                  text: data.error,
                  style: TextStyle(
                    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    fontSize: 13.w,
                  ),
                )
              ],
            ),
          )
        else
          const SizedBox(),
      ],
    );
  }
}
