import 'package:dispusip/app/modules/api_log/components/api_log_card_status.dart';
import 'package:dispusip/app/modules/api_log/components/api_log_text_copy.dart';
import 'package:dispusip/app/modules/api_log/controllers/api_log_controller.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/format_date_time.dart';
import 'package:dispusip/widgets/others/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ApiLogView extends GetView<ApiLogController> {
  const ApiLogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Log'),
        centerTitle: true,
        shadowColor: Colors.transparent,
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          Obx(
            () => controller.isLoading.value
                ? const LoadingIndicator(color: Colors.white)
                : Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        ExpansionPanelList(
                          elevation: 0,
                          expandedHeaderPadding: EdgeInsets.zero,
                          children: controller.apiLogs
                              .asMap()
                              .map(
                                (i, e) => MapEntry(
                                  i,
                                  ExpansionPanel(
                                    canTapOnHeader: true,
                                    headerBuilder: (context, isExpanded) =>
                                        Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Insets.sm,
                                        vertical: Insets.lg,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ApiLogCardStatus(
                                                status: e.method,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                child: ApiLogCardStatus(
                                                  status: FormatDateTime.format(
                                                    value: e.timestamp,
                                                  ),
                                                ),
                                              ),
                                              if (e.error.isEmpty)
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
                                            padding:
                                                const EdgeInsets.only(top: 2),
                                            child: ApiLogTextCopy(
                                              text: e.url,
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontFamily:
                                                    GoogleFonts.jetBrainsMono()
                                                        .fontFamily,
                                                fontSize: 13.w,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    body: Column(
                                      children: [
                                        if (e.payload != 'null')
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                    borderRadius:
                                                        Corners.medBorder,
                                                    color: Colors.indigo
                                                        .withOpacity(.3),
                                                  ),
                                                  child: Text(
                                                    'PAYLOAD',
                                                    style: TextStyle(
                                                      color: Colors.indigo,
                                                      fontFamily: GoogleFonts
                                                              .jetBrainsMono()
                                                          .fontFamily,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                ApiLogTextCopy(
                                                  text: e.payload,
                                                  style: TextStyle(
                                                    fontFamily: GoogleFonts
                                                            .jetBrainsMono()
                                                        .fontFamily,
                                                    fontSize: 13.w,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        else
                                          const SizedBox(),
                                        if (e.response.isNotEmpty)
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                    borderRadius:
                                                        Corners.smBorder,
                                                    color: Colors.green
                                                        .withOpacity(.3),
                                                  ),
                                                  child: Text(
                                                    'RESPONSE',
                                                    style: TextStyles.desc
                                                        .copyWith(
                                                      color:
                                                          Colors.green.shade700,
                                                    ),
                                                  ),
                                                ),
                                                ApiLogTextCopy(
                                                  text: e.response,
                                                  style: TextStyle(
                                                    fontFamily: GoogleFonts
                                                            .jetBrainsMono()
                                                        .fontFamily,
                                                    fontSize: 13.w,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        else
                                          const SizedBox(),
                                        if (e.error.isNotEmpty)
                                          Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                    borderRadius:
                                                        Corners.smBorder,
                                                    color: Colors.red
                                                        .withOpacity(.3),
                                                  ),
                                                  child: Text(
                                                    'ERROR',
                                                    style: TextStyles.desc
                                                        .copyWith(
                                                      color:
                                                          Colors.red.shade700,
                                                    ),
                                                  ),
                                                ),
                                                ApiLogTextCopy(
                                                  text: e.error,
                                                  style: TextStyle(
                                                    fontFamily: GoogleFonts
                                                            .jetBrainsMono()
                                                        .fontFamily,
                                                    fontSize: 13.w,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        else
                                          const SizedBox(),
                                      ],
                                    ),
                                    isExpanded: controller.isOpen[i],
                                  ),
                                ),
                              )
                              .values
                              .toList(),
                          expansionCallback: (i, isOpen) {
                            controller.isOpen[i] = !isOpen;
                          },
                        )
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
