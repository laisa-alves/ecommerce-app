import 'package:dani_tech/constants.dart';
import 'package:dani_tech/size_config.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kPrimaryColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo/Shih_tzu.png',
              height: getProportionateScreenHeight(80),
            ),
            Text(
              'DaniTech',
              style: TextStyle(
                fontFamily: 'IBM Plex Mono',
                fontSize: getProportionateScreenWidth(51),
                color: Colors.white,
              ),
            ),
            Text(
              'A Loja do Seu Melhor Amigo',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(13),
                  fontFamily: 'Inter',
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
