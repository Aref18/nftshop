import 'card1.dart';
import 'card2.dart';
import 'card3.dart';
import 'package:flutter/material.dart';

class backwidget extends StatelessWidget {
  final double screenwidth;
  final double screenhight;
  const backwidget(
      {super.key, required this.screenhight, required this.screenwidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenhight * 0.9,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              card1(screenhight: screenhight, screenwidth: screenwidth),
              card2(screenhight: screenhight, screenwidth: screenwidth),
            ],
          ),
          Positioned(
            child: card3(screenhight: screenhight, screenwidth: screenwidth),
            right: 0,
            bottom: 120,
          ),
        ],
      ),
    );
  }
}
