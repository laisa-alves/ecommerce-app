import 'package:dani_tech/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Informação do endereço de entrega ao pesquisar
class TextBanner extends StatelessWidget {
  const TextBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 32,
      backgroundColor: kSecondaryColor,
      floating: true,
      flexibleSpace: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(left: 20, top: 20, bottom: 20)),
          SvgPicture.asset(
            'icons/map-marker-solid.svg',
            height: 20,
            colorFilter: ColorFilter.mode(Color(0xFF001F23), BlendMode.srcIn),
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          Text(
            'Vila Velha, 29110-000',
            textAlign: TextAlign.left,
            style: TextStyle(color: Color(0xFF001F23), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
