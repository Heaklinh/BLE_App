import 'package:flutter/material.dart';

class ArrowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Set the border color
                width: 2.0, // Set the border width
              ),
              shape: BoxShape
                  .circle, // Optional: Use a circle shape for the border
            ),
            child: IconButton(
              onPressed: () {},
              iconSize: 75,
              icon: Icon(
                Icons.arrow_left,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Set the border color
                width: 2.0, // Set the border width
              ),
              shape: BoxShape
                  .circle, // Optional: Use a circle shape for the border
            ),
            child: IconButton(
              onPressed: () {},
              iconSize: 75,
              icon: Icon(
                Icons.arrow_right,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
