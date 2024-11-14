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
final searchTextFieldDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
  filled: true,
  fillColor: primaryColor,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
    borderSide: BorderSide.none,
  ),
  hintText: "Cercare..." ,
  hintStyle: TextStyle(fontFamily: "Quicksand", fontSize: 16.0, color: backgroundColor),
  helperStyle: TextStyle(fontFamily: "Quicksand", fontSize: 16.0, color: backgroundColor),
  suffixIcon: Icon(Icons.search, color: backgroundColor,),
);