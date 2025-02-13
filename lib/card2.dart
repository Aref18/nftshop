import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card2 extends StatelessWidget {
  final double screenhight;
  final double screenwidth;
  const card2(
      {super.key, required this.screenhight, required this.screenwidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        width: screenwidth * 0.499,
        height: 345,
        child: ClipRRect(
          child: Image.asset(
            'assets/images/ai4.png',
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
    );
  }
}
