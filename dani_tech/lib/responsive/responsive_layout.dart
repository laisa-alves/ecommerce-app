import 'package:dani_tech/constants.dart';
import 'package:flutter/material.dart';

// Adapatação para layoutresponsivo
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(

      // Considção para qual tipo de tela retornar em qual situação, avalia o mobileWidth definido no arquivo constants.dart
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
