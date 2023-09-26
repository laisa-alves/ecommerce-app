import 'package:dani_tech/screens/home_screen/components/body.dart';
import 'package:dani_tech/widgets/custom_appbar.dart';
import 'package:dani_tech/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Body(),
    );
  }
}
