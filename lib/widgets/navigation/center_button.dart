import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class CenterNavigationButton extends StatelessWidget {
  const CenterNavigationButton({super.key,
  required this.selectedIndex,
  required this.onItemTapped
  });

  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: containerDecoration,
      child: IconButton(
        icon: AppIcons.icon(AppIcons.home,  color: selectedIndex == 2 ? accentColor : primaryColor),
        onPressed: () {onItemTapped(2);},
      ),
    );
  }
}