import 'package:aplicacion1_ejemplo/pages/myhomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("Logger is working!");

    return MaterialApp(
      title: 'Clicks App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 1, 255, 26)),
        brightness: Brightness.light,
        useMaterial3: true,
        fontFamily: 'Celtica',
      ),
      home: const MyHomePage(title: 'Clicks Home Page'),
    );
  }
}
