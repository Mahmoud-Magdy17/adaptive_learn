import 'package:adaptive_learn/core/widgets/custom_drawer.dart';
import 'package:adaptive_learn/features/mobile_layout_feature/presentation/widgets/tablet_layout_home.dart';
import 'package:flutter/material.dart';

import 'right_widget.dart';

class DesktopLayoutHome extends StatelessWidget {
  const DesktopLayoutHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(flex: 1, child: CustomDrawer()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TabletLayoutHome(),
            ),
          ),
          Expanded(flex: 1, child: RightWidget())
        ],
      ),
    );
  }
}
