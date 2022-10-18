import 'package:dispusip/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({Key? key, required this.child}) : super(key: key);

  final List<InlineSpan> child;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '',
        style: TextStyles.desc,
        children: child,
      ),
    );
  }
}
