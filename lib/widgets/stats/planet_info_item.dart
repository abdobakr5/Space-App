import 'package:flutter/material.dart';

class PlanetInfoItem extends StatelessWidget {
  final String title;
  final String value;

  const PlanetInfoItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const TextSpan(text: ' : '),
                TextSpan(
                  text: value,
                  style: const TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
