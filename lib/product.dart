import 'package:ep3/imagesdec.dart';
import 'package:ep3/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Productscreen extends StatefulWidget {
  Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  int selectedButton = 0;
  bool selectedheart = false;
  List<double> ratings = List.generate(5, (index) => 0.0);
  List<bool> liked = List.generate(5, (index) => false);

  @override
  void initState() {
    super.initState();
    _loadLikedStatus();
  }

  _loadLikedStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (int i = 0; i < liked.length; i++) {
      liked[i] = prefs.getBool('liked_$i') ?? false;
    }
    setState(() {});
  }

  _saveLikedStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (int i = 0; i < liked.length; i++) {
      prefs.setBool('liked_$i', liked[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dynamic screenHeight = MediaQuery.of(context).size.height;
    final dynamic screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return CupertinoButton(
            child: const Icon(CupertinoIcons.back),
            onPressed: () {
              Navigator.pop(context);
            },
          );
        }),
        title: Center(child: Text('Product Details')),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              );
            },
          )
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 68, 68, 68),
                    Color(0xFFBBDEFB),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  (CircleAvatar(
                    radius: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        child: Image.asset(
                          'assets/images/logo2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // تصویر محصول (با قابلیت کلیک برای باز شدن در صفحه جداگانه)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageDetailScreen(
                      product: models[selectedButton],
                    ),
                  ),
                );
              },
              child: Hero(
                tag: models[selectedButton].image,
                child: Container(
                  width: double.infinity,
                  height: screenHeight * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(models[selectedButton].image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            // عنوان و قیمت محصول
            Row(
              children: [
                Text(
                  models[selectedButton].name,
                  style: GoogleFonts.exo2(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        liked[selectedButton] = !liked[selectedButton];
                      });
                      _saveLikedStatus();
                    },
                    icon: Icon(
                      liked[selectedButton]
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart,
                      color: liked[selectedButton] ? Colors.red : Colors.black,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  models[selectedButton].price,
                  style: GoogleFonts.exo2(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 8),

            // امتیاز و نظرات محصول
            Row(
              children: [
                RatingStars(
                  axis: Axis.horizontal,
                  value: ratings[selectedButton],
                  onValueChanged: (v) {
                    setState(() {
                      ratings[selectedButton] = v;
                    });
                  },
                  starCount: 5,
                  starSize: 30,
                  maxValue: 5,
                  starColor: Colors.yellow,
                  starOffColor: const Color(0xffe7e8ea),
                ),
                SizedBox(width: 8),
                Text(
                  models[selectedButton].reviews,
                  style: GoogleFonts.exo2(color: Colors.black),
                ),
              ],
            ),

            SizedBox(height: 16),

            // توضیحات
            Text(
              "Descriptions",
              style:
                  GoogleFonts.exo2(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            SizedBox(height: 4),
            Text(
              models[selectedButton].description,
              style: GoogleFonts.exo2(),
            ),

            SizedBox(height: 16),

            // مدل‌های محصول
            Text(
              'Models',
              style:
                  GoogleFonts.exo2(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Row(
              children: List.generate(models.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedButton == index
                          ? Colors.black
                          : const Color.fromARGB(255, 201, 200, 200),
                      foregroundColor:
                          selectedButton == index ? Colors.white : Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        selectedButton = index;
                        ratings[selectedButton] = 0.0;
                      });
                    },
                    child: Text(
                      "${index + 1}",
                      style: GoogleFonts.exo2(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                );
              }),
            ),

            Spacer(),

            // دکمه انتخاب
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'choose',
                style: GoogleFonts.exo2(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
