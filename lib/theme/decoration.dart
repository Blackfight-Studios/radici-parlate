import 'package:flutter/material.dart';
import 'package:radici_parlate/theme/theme.dart';

final navigationContainerDecoration = BoxDecoration(
  color: primaryColor,
  borderRadius: BorderRadius.circular(40),
  boxShadow: const [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 10,
      offset: Offset(0, 4),
    ),
  ],
);
const categoryContainerDecoration =  BoxDecoration(
  color: Colors.transparent
);
const gridContainerDecoration = BoxDecoration(
    color: Colors.transparent
);

final searchTextFieldDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
  filled: true,
  fillColor: primaryColor,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
    borderSide: BorderSide.none,
  ),
  hintText: "Cercare..." ,
  hintStyle: TextStyle(fontFamily: "Quicksand", fontSize: 16.0, color: backgroundColor, fontWeight: FontWeight.normal),
  suffixIcon: Icon(Icons.search, color: backgroundColor,),
);

BoxDecoration itemCategoryCardContainer(int colorIndex) {
  List<Color> colors = [primaryColor, accentColor];
  return BoxDecoration(
    color: colors[colorIndex],
    borderRadius: BorderRadius.circular(10),
    boxShadow: const [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        offset: Offset(0, 4),
      ),
    ],
  );
}

final BoxDecoration tagDecoration = BoxDecoration(
  color: accentColor,
  borderRadius: BorderRadius.circular(40),
    boxShadow: const [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        offset: Offset(0, 4),
      ),
  ]
);

final BoxDecoration wordCardContainer = BoxDecoration(
  color: primaryColor,
  borderRadius: BorderRadius.circular(10),
  boxShadow: const [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 10,
      offset: Offset(0, 4),
    ),
  ],
);