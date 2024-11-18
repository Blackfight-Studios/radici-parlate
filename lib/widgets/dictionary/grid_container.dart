import 'package:flutter/material.dart';

import '../../theme/decoration.dart';

class GridContainer extends StatelessWidget {
  final String gridTitle;
  final List<Widget> cards;

  const GridContainer({super.key,
  required this.gridTitle,
  required this.cards
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 50), child: Container(
      decoration: gridContainerDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(left: 20, bottom: 10), child: Text(gridTitle, style: TextStyle(fontSize: 30, fontFamily: "Rokkitt", fontWeight: FontWeight.normal))),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 30,
              childAspectRatio: (125 / 80)
            ),
            itemCount: cards.length,
            itemBuilder: (context, index) {
              return cards[index];
            },
          ),
        ],
      ),
    ));
  }

}