import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class card1 extends StatelessWidget {
  final double screenwidth;
  final double screenhight;
  const card1(
      {super.key, required this.screenhight, required this.screenwidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: screenhight * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                const Color.fromARGB(255, 0, 0, 0),
                Colors.blue.shade100,
              ]),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 3,
              left: 0,
              height: screenhight * 0.20,
              child: Image.asset('assets/images/ai2.png'),
            ),
            Positioned(
                top: 0,
                right: 10,
                child: SizedBox(
                  width: screenhight * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'All Fashion NFTs',
                        style: GoogleFonts.exo2(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Buying and selling the best and most beautiful NFTs in the fashion industry',
                        style: GoogleFonts.exo2(
                            fontSize: 18, color: Colors.black87),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
