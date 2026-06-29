import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class CircularArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isReversed;

  const CircularArrowButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.isReversed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primary, // Red circle
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
