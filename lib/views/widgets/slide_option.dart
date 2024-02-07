import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentValue = 25;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slider(
        value: _currentValue,
        max: 100,
        divisions: 4,
        onChanged: (double value) {
          setState(
            () {
              _currentValue = value;
            },
          );
        },
      ),
    );
  }
}
