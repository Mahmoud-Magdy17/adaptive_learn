import 'package:adaptive_learn/features/mobile_layout_feature/presentation/mobile_layout_home.dart';
import 'package:flutter/material.dart';

import 'core/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return const MobileLayoutHome();
        },
      ),
    );
  }
}
