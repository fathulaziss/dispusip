import 'package:dispusip/styles/colors.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberDetailTabbar extends StatefulWidget {
  const MemberDetailTabbar({
    Key? key,
    required this.onTapTabBarMenu,
    required this.listTabBarMenu,
    required this.listTabBarView,
  }) : super(key: key);

  final Function(int) onTapTabBarMenu;
  final List<Widget> listTabBarMenu;
  final List<Widget> listTabBarView;

  @override
  State<MemberDetailTabbar> createState() => _MemberDetailTabbarState();
}

class _MemberDetailTabbarState extends State<MemberDetailTabbar>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Flex(
        direction: Axis.vertical,
        children: [
          Divider(thickness: 10.h, color: AppColor.grey),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.zero,
              labelColor: AppColor.primaryColor,
              unselectedLabelColor: AppColor.darkGrey,
              labelStyle: TextStyles.text.copyWith(fontWeight: FontWeight.w600),
              unselectedLabelStyle:
                  TextStyles.text.copyWith(color: AppColor.darkGrey),
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 2.h, color: AppColor.primaryColor),
                ),
                boxShadow: Shadows.universal,
              ),
              onTap: (index) {
                widget.onTapTabBarMenu(index);
              },
              tabs: widget.listTabBarMenu,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: widget.listTabBarView,
            ),
          ),
        ],
      ),
    );
  }
}
