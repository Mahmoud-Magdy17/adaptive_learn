import 'package:adaptive_learn/core/constants/colors.dart';
import 'package:adaptive_learn/features/mobile_layout_feature/presentation/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveLearn());
}

class AdaptiveLearn extends StatelessWidget {
  const AdaptiveLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.lightGrey,
        body: HomeView(),
      ),
    );
  }
}
