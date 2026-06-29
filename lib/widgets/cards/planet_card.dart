import 'package:flutter/material.dart';

class PlanetCard extends StatelessWidget {
  final String image;

  const PlanetCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}