import 'package:flutter/material.dart';

import '../../theme/decoration.dart';

class CategoryContainer extends StatelessWidget {
  final String categoryTitle;
  final List<Widget> cards;

  const CategoryContainer({super.key,
    required this.categoryTitle,
    required this.cards,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 50), child: Container(
      decoration: categoryContainerDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(left: 20, bottom: 10), child: Text(categoryTitle, style: TextStyle(fontSize: 30, fontFamily: "Rokkitt", fontWeight: FontWeight.normal))),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cards,
            ),
          )
        ],
      ),
    ));
  }

}