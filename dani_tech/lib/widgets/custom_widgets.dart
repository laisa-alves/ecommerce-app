import 'package:flutter/material.dart';

// Cria títulos padrões entre os produtos - classe reutilizável
class CustomTitle extends StatelessWidget {
  final String text;
  const CustomTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
