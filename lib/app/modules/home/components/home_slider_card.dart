import 'package:dispusip/app/models/slider_model.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeSliderCard extends StatelessWidget {
  const HomeSliderCard({Key? key, required this.data}) : super(key: key);

  final SliderModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppUtils.launchInBrowser(data.link);
      },
      child: CardApp(
        radius: 15.w,
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.w),
              child: SizedBox(
                width: Get.width,
                child:
                    Image.asset(AppAsset.image(data.image), fit: BoxFit.cover),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(Insets.med),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.w),
                color: Colors.black.withOpacity(0.4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    data.title,
                    style: TextStyles.desc.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    data.date,
                    style: TextStyles.desc.copyWith(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
