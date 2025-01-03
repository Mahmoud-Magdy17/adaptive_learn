import 'package:flutter/material.dart';

import 'custom_list_item.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 12,
      itemBuilder: (context, index) {
        return CustomListItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 12,
        );
      },
    );
  }
}
