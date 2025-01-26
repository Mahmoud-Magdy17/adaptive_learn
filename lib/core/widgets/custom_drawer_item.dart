import 'package:adaptive_learn/core/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.item});
  final DrawerItemModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(item.icon),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(item.title),
      ),
    );
  }
}
