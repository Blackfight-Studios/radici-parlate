import 'package:flutter/material.dart';
import 'package:radici_parlate/theme/theme.dart';

import '../../theme/decoration.dart';

class AppSearchBar extends StatefulWidget {
  final Function(String) onSearch;

  const AppSearchBar({super.key,
    required this.onSearch,
  });

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar>{
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: widget.onSearch,
      decoration: searchTextFieldDecoration,
      style: TextStyle(fontFamily: "Quicksand", fontSize: 16.0, color: backgroundColor),
      cursorColor: backgroundColor,
    );
  }

}
