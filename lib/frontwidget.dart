import 'package:ep3/product.dart';
import 'package:ep3/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class frontwidget extends StatelessWidget {
  const frontwidget({
    super.key,
    required this.screenwidth,
    required this.screenhight,
  });

  final double screenwidth;
  final double screenhight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.surface,
                Theme.of(context).colorScheme.surface.withOpacity(0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.9, 1.0]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 28,
            ),
            Text(
              'Welcome to FashionNFT',
              style: GoogleFonts.exo2(fontSize: 22, color: Colors.black54),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              textAlign: TextAlign.center,
              'Are you ready to purchase your favorite NFT from us?',
              style: GoogleFonts.exo2(
                  fontSize: 22,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: screenwidth,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Productscreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Get Started ',
                    style: GoogleFonts.exo2(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account? ',
                  style: GoogleFonts.exo2(fontSize: 20),
                ),
                SizedBox(width: 3),
                TextButton(
                  style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: GoogleFonts.exo2(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 5),
                Text('/'),
                TextButton(
                  style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  onPressed: () {
                    Navigator.push(
                        context,
                        DialogRoute(
                          context: context,
                          builder: (context) => Signup(),
                        ));
                  },
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.exo2(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 58,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
