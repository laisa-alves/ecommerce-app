import 'package:dani_tech/constants.dart';
import 'package:dani_tech/screens/home_screen/home_screen.dart';
import 'package:dani_tech/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DaniTech',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        textTheme: const TextTheme(
            bodySmall: TextStyle(color: kTextColor),
            bodyMedium: TextStyle(color: kTextColor),
            bodyLarge: TextStyle(color: kTextColor)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}
