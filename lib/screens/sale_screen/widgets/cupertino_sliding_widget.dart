import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoSlidingWidget extends StatefulWidget {
  const CupertinoSlidingWidget({super.key});

  @override
  State<CupertinoSlidingWidget> createState() => _CupertinoSlidingWidgetState();
}

class _CupertinoSlidingWidgetState extends State<CupertinoSlidingWidget> {
  int segmentedControlGroupValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("Cash"),
    1: Text("Credit"),
  };
  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl<int>(

      backgroundColor: Colors.grey.shade400,
      // Set the background color of unselected segments
      thumbColor: Colors.green,
      // Set thumb color when a segment is selected
      groupValue: segmentedControlGroupValue,

      children: myTabs,

      onValueChanged: (int? i) {
        setState(() {
          segmentedControlGroupValue = i!;
        });
      },
    );
  }
}
