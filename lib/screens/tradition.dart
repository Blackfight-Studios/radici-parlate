import 'package:flutter/material.dart';
import 'package:radici_parlate/widgets/category/category_container.dart';
import 'package:radici_parlate/widgets/category/item_card.dart';
import 'package:radici_parlate/widgets/searchbar/search_bar.dart';

class TraditionScreen extends StatefulWidget {
  const TraditionScreen({super.key});

  @override
  State<TraditionScreen> createState() => _TraditionScreenState();
}

class _TraditionScreenState extends State<TraditionScreen> {

  @override
  Widget build(BuildContext context) {
    String query = "";
    return Scaffold(
      body: SingleChildScrollView(child: Padding(padding: const EdgeInsets.only(top: 15, bottom: 100), child: Column(
        children: [
        Center(child: Text("Tradizioni", style: Theme.of(context).textTheme.titleMedium,)),
        Padding(padding: const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 50), child: AppSearchBar(onSearch: (query) {})),
        /** TODO: make dynamic **/
        CategoryContainer(categoryTitle: "Prima categoria", cards: [ItemCard(colorIndex: 0), ItemCard(colorIndex: 0), ItemCard(colorIndex: 0)]),
        CategoryContainer(categoryTitle: "Seconda categoria", cards: [ItemCard(colorIndex: 1), ItemCard(colorIndex: 1), ItemCard(colorIndex: 1)]),
        CategoryContainer(categoryTitle: "Terza categoria", cards: [ItemCard(colorIndex: 0), ItemCard(colorIndex: 0), ItemCard(colorIndex: 0)]),
        CategoryContainer(categoryTitle: "Quarta categoria", cards: [ItemCard(colorIndex: 1), ItemCard(colorIndex: 1), ItemCard(colorIndex: 1)]),
      ],)),
    ));
  }

}
