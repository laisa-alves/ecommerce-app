import 'package:dani_tech/screens/home_screen/components/carousel.dart';
import 'package:dani_tech/screens/home_screen/components/product_list.dart';
import 'package:dani_tech/screens/home_screen/components/text_banner.dart';
import 'package:dani_tech/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          TextBanner(),
          CarouselHome(),
          CustomTitle(text: 'Ofertas pra você'),
          ProductList(),
        ],
      ),
    );
  }
}
