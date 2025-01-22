import 'package:adaptive_learn/core/widgets/custom_drawer.dart';
import 'package:adaptive_learn/features/mobile_layout_feature/presentation/mobile_layout_home.dart';
import 'package:adaptive_learn/features/mobile_layout_feature/presentation/tablet_layout_feature.dart';
import 'package:flutter/material.dart';

import 'core/widgets/custom_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(
        leadingOnPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 600) {
            return const TabletLayout();
          } else {
            return const MobileLayoutHome();
          }
        },
      ),
    );
  }
}
