import 'package:flutter/material.dart';

class RightPartChild extends StatelessWidget {
  const RightPartChild({super.key, required this.color});
  // final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      // child: child,
    );
  }
}
