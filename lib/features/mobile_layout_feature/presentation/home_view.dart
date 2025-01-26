import 'package:adaptive_learn/core/constants/colors.dart';
import 'package:adaptive_learn/core/widgets/custom_drawer.dart';
import 'package:adaptive_learn/features/mobile_layout_feature/presentation/widgets/desktop_layout_home.dart';
import 'package:adaptive_learn/features/mobile_layout_feature/presentation/widgets/mobile_layout_home.dart';
import 'package:adaptive_learn/features/mobile_layout_feature/presentation/widgets/tablet_layout_home.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';
import 'widgets/adaptive_layout.dart';

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
      backgroundColor: AppColors.lightGrey,
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: MediaQuery.of(context).size.width < 900 + 32
          ? CustomAppBar(
              leadingOnPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AdaptiveLayout(
          desktopBuilder: (BuildContext context) {
            return const DesktopLayoutHome();
          },
          tabletBuilder: (BuildContext context) {
            return const TabletLayoutHome();
          },
          mobileBuilder: (BuildContext context) {
            return const MobileLayoutHome();
          },
        ),
      ),
    );
  }
}
