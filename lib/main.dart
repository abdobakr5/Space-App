import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const SpaceExplorerApp());
}

class SpaceExplorerApp extends StatelessWidget {
  const SpaceExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space Explorer',
      theme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}