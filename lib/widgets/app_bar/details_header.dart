import 'package:flutter/material.dart';
import '../../core/constants/app_assets.dart';
import '../buttons/circular_arrow_button.dart';

class DetailsHeader extends StatelessWidget {
  final String planetName;
  final String planetTitle;

  const DetailsHeader({
    super.key,
    required this.planetName,
    required this.planetTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 1. Image Background
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.asset(
            AppAssets.detailsHeader,
            fit: BoxFit.cover,
          ),
        ),

        // 2. Filled Gradient
        Container(
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(0.8),
              ],
            ),
          ),
        ),

        // 3. Top Title (Planet Name) positioned Top Center
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              planetName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        // 4. Back Button
        Positioned(
          top: 40,
          left: 16,
          child: CircularArrowButton(
            icon: Icons.arrow_back,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),

        // 5. Bottom title (Planet Title) positioned Center Left (of the bottom area)
        Positioned(
          bottom: 20,
          left: 24,
          child: Text(
            planetTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
