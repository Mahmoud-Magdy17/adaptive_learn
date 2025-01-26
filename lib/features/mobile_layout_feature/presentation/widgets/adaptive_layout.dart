import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.desktopBuilder,
    required this.tabletBuilder,
    required this.mobileBuilder,
  });
  final WidgetBuilder desktopBuilder;
  final WidgetBuilder tabletBuilder;
  final WidgetBuilder mobileBuilder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 900) {
          return desktopBuilder(context);
        }
        if (constraints.maxWidth >= 600) {
          return tabletBuilder(context);
        } else {
          return mobileBuilder(context);
        }
      },
    );
  }
}
