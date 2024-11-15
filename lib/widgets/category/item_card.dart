import 'package:flutter/material.dart';

import '../../theme/decoration.dart';

class ItemCard extends StatelessWidget {
  final int colorIndex;

  const ItemCard({super.key,
    required this.colorIndex
  });


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 150,
          minHeight: 50,
          maxWidth: 250,
          minWidth: 150,
        ),
        decoration: itemCategoryCardContainer(colorIndex),


    ),
    );
  }

}