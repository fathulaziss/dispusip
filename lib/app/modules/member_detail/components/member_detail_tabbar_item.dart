import 'package:flutter/material.dart';

class MemberDetailTabbarItem extends StatelessWidget {
  const MemberDetailTabbarItem({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text(label),
      ),
    );
  }
}
