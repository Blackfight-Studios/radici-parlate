import 'package:flutter/material.dart';

import '../../theme/decoration.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 80,
          minHeight: 30,
          maxWidth: 125,
          minWidth: 75,
        ),
        decoration: wordCardContainer,
      ),
    );
  }

}