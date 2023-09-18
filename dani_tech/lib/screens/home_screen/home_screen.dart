import 'package:dani_tech/screens/home_screen/components/body.dart';
import 'package:dani_tech/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Body(),
    );
  }
}
