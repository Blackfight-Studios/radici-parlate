import 'package:flutter/material.dart';
import 'package:radici_parlate/theme/decoration.dart';

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
      decoration: navigationContainerDecoration,
      child: Padding(padding: const EdgeInsets.only(left: 15, right: 15), child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: AppIcons.icon(AppIcons.dictionary, color: selectedIndex == 0 ? accentColor : backgroundColor),
              onPressed: () {onItemTapped(0);},
            ),
            IconButton(
              icon: AppIcons.icon(AppIcons.map, color: selectedIndex == 1 ? accentColor : backgroundColor),
              onPressed: () {onItemTapped(1);},
            ),
            IconButton(
              icon: AppIcons.icon(AppIcons.home,  color: selectedIndex == 2 ? accentColor : backgroundColor, size: 50),
              onPressed: () {onItemTapped(2);},
            ),
            IconButton(
              icon: AppIcons.icon(AppIcons.tradition, color: selectedIndex == 3 ? accentColor : backgroundColor),
              onPressed: () {onItemTapped(3);},
            ),
            IconButton(
              icon: AppIcons.icon(AppIcons.user, color: selectedIndex == 4 ? accentColor : backgroundColor),
              onPressed: () {onItemTapped(4);},
            ),
          ],
        )),
    );
  }

}