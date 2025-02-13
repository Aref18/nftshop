import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card3 extends StatelessWidget {
  final double screenhight;
  final double screenwidth;

  const card3(
      {super.key, required this.screenhight, required this.screenwidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60), bottomLeft: Radius.circular(40)),
        border:
            Border.all(color: Theme.of(context).colorScheme.surface, width: 7),
        image: DecorationImage(
            image: AssetImage('assets/images/ai5.png'), fit: BoxFit.cover),
      ),
      width: screenwidth * 0.48,
      height: screenhight * 0.47,
    );
  }
}
