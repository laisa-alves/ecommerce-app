import 'package:flutter/material.dart';

// Display de promoções e destaques como carrosel de imagens
class CarouselHome extends StatefulWidget {
  @override
  State<CarouselHome> createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  int _currentImage = 0;

  // Lista com imagens para display
  final List<String> offersImages = [
    './images/home_banner/banner_tv.png',
    './images/home_banner/banner_setup.png',
    './images/home_banner/banner_celular.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          // criação do stack das imagens e do ponto identificador
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
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
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Image.asset(offersImages[index]));
                        })),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).size.height - 30),
                left: MediaQuery.of(context).size.width / 2 - 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...List.generate(offersImages.length,
                        (index) => DotBuilder(isActive: index == _currentImage))
                  ],
                ),
              )
            ],
          ),

          // espaçamento
          SizedBox(height: 20),
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
    return Container(
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: 6,
        decoration: BoxDecoration(
            color: isActive ? Color(0xFF745EE9) : Color(0xFFEBE8FC),
            borderRadius: BorderRadius.circular(5)));
  }
}
