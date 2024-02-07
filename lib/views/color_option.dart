import 'package:flutter/material.dart';

class CircularButton extends StatefulWidget {
  @override
  _CircularButtonState createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> {
  int selectedButtonIndex = 0;

  List<String> buttonLabels = [
    'Red',
    'Green',
    'Blue',
  ];

  List<Color> buttonColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List<Widget>.generate(
        buttonLabels.length,
        (int index) {
          return Transform.scale(
            scale: 2,
            child: ChoiceChip(
              label: selectedButtonIndex == index
                  ? const Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        buttonLabels[index],
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
              selected: false,
              shape: const CircleBorder(),
              backgroundColor: buttonColors[index],
              selectedColor: buttonColors[index].withOpacity(0.8),
              onSelected: (bool selected) {
                setState(() {
                  selectedButtonIndex = selected ? index : 0;
                });
              },
            ),
          );
        },
      ).toList(),
    );
  }
}
