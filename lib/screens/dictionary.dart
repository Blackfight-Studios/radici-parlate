import 'package:flutter/material.dart';
import 'package:radici_parlate/widgets/category/category_container.dart';
import 'package:radici_parlate/widgets/dictionary/word_card.dart';
import 'package:radici_parlate/widgets/tag/tags_container.dart';

import '../utils/strings.dart';
import '../widgets/dictionary/grid_container.dart';
import '../widgets/searchbar/search_bar.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {


  @override
  Widget build(BuildContext context) {
    String query = "";
    return Scaffold(
      body: SingleChildScrollView(child: Padding(padding: const EdgeInsets.only(top: 15, bottom: 100), child: Column(
        children: [
          Center(child: Text("Dizionario", style: Theme.of(context).textTheme.titleMedium,)),
          Padding(padding: const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 50), child: AppSearchBar(onSearch: (query) {})),
          const TagsContainer(tagsName: ["primo tag", "primo tag", "primo tag", "primo tag", "primo tag", "primo tag"]),
          CategoryContainer(categoryTitle: Strings.recent10, cards: getRecentAddCard()),
          GridContainer(gridTitle: Strings.wordsGrid, cards: getAllCards()),
        ],
      ),),),
    );
  }

  List<WordCard> getRecentAddCard() {
    List<WordCard> cards = [];
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    return cards;
  }

  List<WordCard> getAllCards() {
    List<WordCard> cards = [];
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    cards.add(const WordCard());
    return cards;
  }

}