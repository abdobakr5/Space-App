import 'package:flutter/material.dart';
import '../../core/constants/app_assets.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.asset(
            AppAssets.detailsHeader,
            fit: BoxFit.cover,
          ),
        ),
        
        Container(
          height: 250,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black,
              ],
            ),
          ),
        ),

        const Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'Explore',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        const Positioned(
          bottom: 20,
          left: 24,
          child: Text(
            'Which planet\nwould you like to explore?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
