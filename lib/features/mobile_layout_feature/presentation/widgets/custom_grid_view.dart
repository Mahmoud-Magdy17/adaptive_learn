
import 'package:adaptive_learn/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      crossAxisCount: 2,
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        GridItem(),
        GridItem(),
        GridItem(),
        GridItem(),
      ],
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.darkGrey,
      ),
    );
  }
}
