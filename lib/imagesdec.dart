import 'package:ep3/models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageDetailScreen extends StatelessWidget {
  final Product product;

  const ImageDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name, style: GoogleFonts.exo2()),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // بازگشت به صفحه قبل
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // تصویر محصول
            Hero(
              tag: product.image,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(product.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // توضیحات محصول
            Text(
              product.imagedetails,
              style: GoogleFonts.exo2(fontSize: 18, color: Colors.black87),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
