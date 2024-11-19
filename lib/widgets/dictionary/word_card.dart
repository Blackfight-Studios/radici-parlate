import 'package:flutter/material.dart';
import 'package:radici_parlate/theme/theme.dart';

import '../../theme/decoration.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(right: 5, left: 5),
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 100,
          minHeight: 50,
          maxWidth: 150,
          minWidth: 125,
        ),
        decoration: wordCardContainer,
        child: Row(
          children: [
            Container(width: 20, height: double.infinity, decoration: wordSecondCardContainer,),
            Expanded(child: Container(alignment: Alignment.center,
                child: Padding(padding: EdgeInsets.all(10),child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(decoration: wordTextCardContainer, padding: const EdgeInsets.symmetric(horizontal: 10), child: Text("Dialetto", style: AppTextStyles.wordCard,)),
                Text("Italiano", style: AppTextStyles.wordCardSecond,),
                Container(decoration: wordTextCardContainer, padding: const EdgeInsets.symmetric(horizontal: 10), child: Text("masc, adj", style: AppTextStyles.wordCardThird,),),
              ],
                )))),
          ],
        ),
      ),
    );
  }

}