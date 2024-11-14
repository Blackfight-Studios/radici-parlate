import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      color: primaryColor,
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: AppIcons.icon(AppIcons.dictionary, color: selectedIndex == 0 ? accentColor : primaryColor),
              onPressed: () {onItemTapped(0);},
            ),
            IconButton(
              icon: AppIcons.icon(AppIcons.map, color: selectedIndex == 1 ? accentColor : primaryColor),
              onPressed: () {onItemTapped(1);},
            ),
            const SizedBox(width: 40),
            IconButton(
              icon: AppIcons.icon(AppIcons.tradition, color: selectedIndex == 3 ? accentColor : primaryColor),
              onPressed: () {onItemTapped(3);},
            ),
            IconButton(
              icon: AppIcons.icon(AppIcons.user, color: selectedIndex == 4 ? accentColor : primaryColor),
              onPressed: () {onItemTapped(4);},
            ),
          ],
        ),
      ),
    );
  }

}