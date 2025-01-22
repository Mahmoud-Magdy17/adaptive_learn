import 'package:flutter/material.dart';

import 'custom_grid_item.dart';

class CustomSliverHorizontalListView extends StatelessWidget {
  const CustomSliverHorizontalListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomGridItem(
              itemIndex: index.toString(),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 8,
            );
          },
          itemCount: 8,
        ),
      ),
    );
  }
}
