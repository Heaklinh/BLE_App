import 'package:flutter/material.dart';
import 'package:slith_lamp_app/views/color_option.dart';
import 'package:slith_lamp_app/views/widgets/arrow_button.dart';
import 'package:slith_lamp_app/views/widgets/slide_option.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("My App"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bluetooth),
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
              flex: 3,
              child: Align(
                  alignment: Alignment.center, child: CircularButton())),
          Flexible(
              flex: 4,
              child: Align(alignment: Alignment.center, child: SliderWidget())),
          Flexible(
              flex: 6,
              child: Align(alignment: Alignment.center, child: ArrowButtons()))
        ],
      ),
    );
  }
}
