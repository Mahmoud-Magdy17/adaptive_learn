import 'package:flutter/material.dart';

import 'widgets/custom_sliver_grid_view.dart';
import 'widgets/custom_sliver_list_view.dart';
import 'widgets/custom_sliver_sized_box.dart';

class MobileLayoutHome extends StatelessWidget {
  const MobileLayoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: CustomScrollView(
        slivers: [
          CustomSliverGridView(),
          CustomSliverSizedBox(
            height: 12,
          ),
          CustomSliverListView(),
        ],
      ),
    );
  }
}
