import 'package:flutter/material.dart';
import 'package:hackhunt/pages/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HackHunt',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 131, 254, 184),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 27, 26, 26),
      ),
      home: Homescreen(),
    );
  }
}
