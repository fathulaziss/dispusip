import 'package:dispusip/app/modules/home/models/home_news_model.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({Key? key, required this.data, required this.margin})
      : super(key: key);

  final HomeNewsModel data;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CardApp(
        isShowShadows: true,
        margin: margin,
        width: 304.w,
        padding: EdgeInsets.zero,
        radius: 10.w,
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.w),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
                    child: Image.asset(
                      AppAsset.logo('logo_dispusip_black.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // child: Image.network(data.link, fit: BoxFit.fill),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title['rendered'],
                      style:
                          TextStyles.desc.copyWith(fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(Insets.xs),
                    Text(
                      data.date,
                      style: TextStyles.text
                          .copyWith(fontSize: 10.w, color: AppColor.darkGrey),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
