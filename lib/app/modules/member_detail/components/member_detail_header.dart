import 'package:dispusip/app/modules/member_detail/controllers/member_detail_controller.dart';
import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MemberDetailHeader extends GetView<MemberDetailController> {
  const MemberDetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.all(Insets.med),
        child: Row(
          children: [
            if (controller.cUserInfo.dataUser.value.photo.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(50.w),
                child: Image.network(
                  controller.cUserInfo.dataUser.value.photo,
                  width: 50.w,
                  height: 50.w,
                  fit: BoxFit.cover,
                ),
              )
            else
              Container(
                width: 50.w,
                height: 50.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.grey,
                ),
                child: Icon(
                  Icons.person_rounded,
                  size: 40.w,
                  color: AppColor.blue,
                ),
              ),
            horizontalSpace(Insets.med),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.cUserInfo.dataUser.value.nomorAnggota,
                    style:
                        TextStyles.text.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    controller.cUserInfo.dataUser.value.namaLengkap,
                    style: TextStyles.text,
                  ),
                  Text(
                    controller.cUserInfo.dataUser.value.kotaDomisili,
                    style: TextStyles.text,
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
