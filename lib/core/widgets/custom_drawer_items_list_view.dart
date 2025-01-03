
import 'package:adaptive_learn/core/widgets/custom_drawer_item.dart';
import 'package:adaptive_learn/core/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          item: items[index],
        );
      },
    );
  }
}
