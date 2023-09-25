import 'package:dani_tech/constants.dart';
import 'package:dani_tech/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CarouselHome extends StatefulWidget {
  @override
  State<CarouselHome> createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  int _currentImage = 0;

  final List<String> offersImages = [
    'images/home_banner/banner_tv.png',
    'images/home_banner/banner_setup.png',
    'images/home_banner/banner_celular.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: AspectRatio(
                aspectRatio: 2,
                child: PageView.builder(
                    itemCount: offersImages.length,
                    onPageChanged: (value) {
                      setState(() {
                        _currentImage = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Image.asset(offersImages[index]));
                    })),
          )
        ],
      ),
    );
  }
}

// Dots de navegação
class DotBuilder extends StatelessWidget {
  const DotBuilder({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
