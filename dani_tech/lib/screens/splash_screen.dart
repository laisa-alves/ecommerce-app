import 'package:dani_tech/screens/components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody());
  }
}
