import 'package:adaptive_learn/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({super.key, required this.itemIndex});
  final String itemIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.darkGrey,
      ),
      child: Text(
        itemIndex,
        style: const TextStyle(
          color: AppColors.primaryWhite,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
