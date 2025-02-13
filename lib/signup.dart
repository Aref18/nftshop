import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double view = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  const Color.fromARGB(255, 105, 55, 55),
                  Colors.blue.shade200,
                ]),
          ),
          child: Stack(
            children: [
              SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0), // فاصله از لبه‌ها
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(CupertinoIcons.back, size: 30),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: screenHeight * 0.16), // فاصله از بالای صفحه
                  Text(
                    "Create Your Account",
                    style: GoogleFonts.exo2(fontSize: 30),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Colors.white,
                    ),
                    height: screenHeight * 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 50),
                      child: Column(
                        children: [
                          TextField(
                            scrollPadding:
                                EdgeInsets.only(bottom: view, top: 50),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'First name',
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            scrollPadding:
                                EdgeInsets.only(bottom: view, top: 50),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Last name',
                              prefixIcon: Icon(Icons.account_circle),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            scrollPadding:
                                EdgeInsets.only(bottom: view, top: 50),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            scrollPadding:
                                EdgeInsets.only(bottom: view, top: 50),
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.password_rounded),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.08,
                          ),
                          SizedBox(
                            width: screenWidth * 0.6,
                            child: TextButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                'Sing up',
                                style: GoogleFonts.exo2(fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'or',
                            style: GoogleFonts.exo2(fontSize: 20),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                iconSize: 40,
                                onPressed: () {},
                                icon: Icon(Icons.g_mobiledata_sharp),
                              ),
                              IconButton(
                                iconSize: 40,
                                onPressed: () {},
                                icon: Icon(Icons.facebook_outlined),
                              ),
                              IconButton(
                                iconSize: 40,
                                onPressed: () {},
                                icon: Icon(Icons.apple),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
