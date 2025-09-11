import 'package:flutter/material.dart';
import 'package:ieee/Screens/home.dart';
import 'package:ieee/Screens/settings.dart';
import 'package:ieee/Screens/splach.dart';
import 'package:ieee/Screens/webResult.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(titleTextStyle: TextStyle(fontFamily: 'Bruno')),
      ),
      home: SplashScreen(),

    );
  }
}
