import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sss/Sliders/ProjectsWidget.dart';
import 'package:sss/coolors.dart';
import 'package:sss/header.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Coolors.accentColor,
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
