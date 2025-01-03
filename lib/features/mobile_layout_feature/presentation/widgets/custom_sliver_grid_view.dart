import 'package:flutter/material.dart';

import 'custom_grid_item.dart';

class CustomSliverGridView extends StatelessWidget {
  const CustomSliverGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return CustomGridItem(
          itemIndex: '$index',
        );
      },
    );
  }
}
