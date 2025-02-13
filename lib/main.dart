import 'package:ep3/backwidget.dart';
import 'package:flutter/material.dart';
import 'frontwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shopAI',
      theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(builders: {
        for (var platform in TargetPlatform.values)
          platform: FadeUpwardsPageTransitionsBuilder(),
      })),
      home: Welcomscreen(),
    );
  }
}

class Welcomscreen extends StatelessWidget {
  const Welcomscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenhight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: screenhight,
          child: Stack(
            children: [
              backwidget(
                screenhight: screenhight,
                screenwidth: screenwidth,
              ),
              frontwidget(screenwidth: screenwidth, screenhight: screenhight),
            ],
          ),
        ),
      ),
    );
  }
}
