import 'package:dispusip/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({
    Key? key,
    required this.height,
    this.color1,
    this.color2,
  }) : super(key: key);

  final double height;
  final Color? color1;
  final Color? color2;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Container(
          width: Get.width,
          height: height,
          color: color1 ?? AppColor.primaryColor,
        ),
        Expanded(
          child: Container(color: color2 ?? Colors.white),
        ),
      ],
    );
  }
}
