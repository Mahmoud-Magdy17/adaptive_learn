import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/drawer_item_model.dart';
import 'custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'D A S H B O A R D', icon: Icons.home),
    DrawerItemModel(title: 'S E T T I N G', icon: Icons.settings),
    DrawerItemModel(title: 'A B O U T', icon: Icons.info),
    DrawerItemModel(title: 'L O G O U T', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.lightGrey,
    elevation: 0,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 80,
            ),
          ),
          CustomDrawerItemsListView(items: items)
        ],
      ),
    );
  }
}
