import 'package:dispusip/app/modules/onboarding/components/onboarding_slidetile.dart';
import 'package:dispusip/app/modules/onboarding/components/onboarding_slidetile_indicator.dart';
import 'package:dispusip/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_asset.dart';
import 'package:dispusip/widgets/buttons/button_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Flex(
          direction: Axis.vertical,
          children: [
            verticalSpace(Insets.xxl),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Insets.xxl),
              child: Image.asset(
                AppAsset.logo('logo_dispusip_black.png'),
                height: 48.h,
              ),
            ),
            Expanded(
              child: PageView(
                controller: controller.cSlideTile,
                physics: const ClampingScrollPhysics(),
                onPageChanged: (index) {
                  controller.slideIndex(index);
                },
                children: [
                  ...controller.listSlideTile.map((e) {
                    return OnboardingSlidetile(data: e);
                  }),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 185.h,
              child: (controller.slideIndex.value == 2)
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Insets.xxl),
                          child: ButtonPrimary(
                            onTap: () => Get.toNamed(Routes.LOGIN),
                            label: 'MULAI',
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: RichText(
                            text: TextSpan(
                              text: 'Sudah punya akun ? ',
                              style: TextStyles.desc,
                              children: [
                                TextSpan(
                                  text: 'Login',
                                  style: TextStyles.desc
                                      .copyWith(color: AppColor.primaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : OnboardingSlidetileIndicator(
                      activeIndex: controller.slideIndex.value,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
