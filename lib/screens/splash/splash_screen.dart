import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_strings.dart';
import '../../widgets/buttons/custom_button.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.splashPlanet,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            left: 30,
            top: MediaQuery.of(context).size.height * 0.45,
            child: Text(
              'Explore\nThe\nUniverse',
              style: const TextStyle(
                fontFamily: 'Inter',
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w900,
                height: 1.1,
              ),
            ),
          ),

          Positioned(
            left: 24,
            right: 24,
            bottom: 40,
            child: CustomButton(
              text: AppStrings.explore,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}