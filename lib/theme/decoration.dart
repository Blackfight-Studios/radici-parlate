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