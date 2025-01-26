import 'package:adaptive_learn/features/mobile_layout_feature/presentation/widgets/custom_sliver_horizontal_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_sliver_list_view.dart';
import 'custom_sliver_sized_box.dart';

class TabletLayoutHome extends StatelessWidget {
  const TabletLayoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          CustomSliverHorizontalListView(),
          CustomSliverSizedBox(
            height: 16,
          ),
          CustomSliverListView(),
        ],
      ),
    );
  }
}
