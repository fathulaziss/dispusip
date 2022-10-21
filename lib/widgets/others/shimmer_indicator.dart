import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/widgets/cards/card_app.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerIndicator extends StatelessWidget {
  const ShimmerIndicator({
    required this.width,
    required this.height,
    required this.radius,
    this.shimmerStyle = ShimmerStyle.rectangular,
    this.margin,
    this.padding,
    Key? key,
  }) : super(key: key);

  final double width;
  final double height;
  final double radius;
  final ShimmerStyle shimmerStyle;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromRGBO(189, 189, 189, 1),
      highlightColor: const Color.fromRGBO(224, 224, 224, 1),
      child: shimmerStyle == ShimmerStyle.rectangular
          ? CardApp(
              margin: margin ?? EdgeInsets.zero,
              padding: padding ?? EdgeInsets.zero,
              radius: radius,
              width: width,
              height: height,
              color: Colors.grey,
            )
          : shimmerStyle == ShimmerStyle.rectangle
              ? CardApp(
                  margin: margin ?? EdgeInsets.zero,
                  padding: padding ?? EdgeInsets.zero,
                  radius: radius,
                  width: width,
                  height: height,
                  color: Colors.grey,
                )
              : shimmerStyle == ShimmerStyle.circle
                  ? Container(
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    )
                  : const SizedBox(),
    );
  }
}
