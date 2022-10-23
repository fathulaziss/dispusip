import 'package:dispusip/app/modules/member_detail/components/member_detail_header.dart';
import 'package:dispusip/app/modules/member_detail/components/member_detail_tabbar.dart';
import 'package:dispusip/app/modules/member_detail/components/member_detail_tabbar_item.dart';
import 'package:dispusip/app/modules/member_detail/components/member_detail_tabbar_view_one.dart';
import 'package:dispusip/app/modules/member_detail/components/member_detail_tabbar_view_two.dart';
import 'package:dispusip/app/modules/member_detail/controllers/member_detail_controller.dart';
import 'package:dispusip/widgets/pages/page_default_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MemberDetailView extends GetView<MemberDetailController> {
  const MemberDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageDefaultTwo(
      titlePage: 'Kartu Anggota',
      isScrollable: false,
      padding: EdgeInsets.zero,
      child: Flex(
        direction: Axis.vertical,
        children: [
          const MemberDetailHeader(),
          MemberDetailTabbar(
            onTapTabBarMenu: (value) {},
            listTabBarMenu: const [
              MemberDetailTabbarItem(label: 'QR Code'),
              MemberDetailTabbarItem(label: 'Barcode'),
            ],
            listTabBarView: const [
              MemberDetailTabbarViewOne(),
              MemberDetailTabbarViewTwo(),
            ],
          )
        ],
      ),
    );
  }
}
