import 'package:adaptive_learn/features/mobile_layout_feature/presentation/widgets/custom_sliver_horizontal_list_view.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_sliver_list_view.dart';
import 'widgets/custom_sliver_sized_box.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: CustomScrollView(
        slivers: [
          CustomSliverHorizontalListView(),
          CustomSliverSizedBox(
            height: 12,
          ),
          CustomSliverListView(),
        ],
      ),
    );
  }
}
