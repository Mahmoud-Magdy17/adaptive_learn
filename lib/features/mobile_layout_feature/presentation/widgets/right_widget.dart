import 'package:adaptive_learn/core/constants/colors.dart';
import 'package:adaptive_learn/features/mobile_layout_feature/presentation/widgets/right_part_child.dart';
import 'package:flutter/material.dart';

class RightWidget extends StatelessWidget {
  const RightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 4,
          child: RightPartChild(
            color: AppColors.darkGrey,
            // child: SizedBox(),
          ),
        ),
        SizedBox(height: 16,),
        Expanded(
          flex: 2,
          child: RightPartChild(
            color: AppColors.primaryWhite,
            // child:  SizedBox(),
          ),
        ),
      ],
    );
  }
}
