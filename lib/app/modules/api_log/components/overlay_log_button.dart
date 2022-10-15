import 'package:dispusip/app/modules/api_log/components/log_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverlayLogButton extends StatefulWidget {
  const OverlayLogButton({Key? key}) : super(key: key);

  @override
  OverlayLogButtonState createState() => OverlayLogButtonState();
}

class OverlayLogButtonState extends State<OverlayLogButton> {
  double _y = 100;
  @override
  Widget build(BuildContext context) {
    return Overlay(
      initialEntries: [
        OverlayEntry(
          builder: (context) => Positioned(
            right: 0,
            top: _y,
            child: SizedBox(
              height: 48.w,
              width: 48.w,
              child: Draggable(
                feedback: const LogButton(color: Colors.green),
                childWhenDragging: Container(),
                onDragEnd: (dragDetails) {
                  setState(() {
                    _y = dragDetails.offset.dy - 20;
                  });
                },
                child: LogButton(color: Colors.blue.withOpacity(.2)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
