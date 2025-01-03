import 'package:flutter/material.dart';

import 'widgets/custom_grid_view.dart';
import 'widgets/custom_list_view.dart';

class MobileLayoutHome extends StatelessWidget {
  const MobileLayoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomGridView(),
            SizedBox(
              height: 12,
            ),
            CustomListView(),
          ],
        ),
      ),
    );
  }
}
