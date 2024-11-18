import 'package:flutter/cupertino.dart';
import 'package:radici_parlate/theme/theme.dart';

import '../../theme/decoration.dart';

class TagsContainer extends StatelessWidget {
  final List<String> tagsName;
  
  const TagsContainer({super.key,
  required this.tagsName
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 15), child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getTags(),
      ),
    ),);
  }
  
  List<Padding> getTags() {
    List<Padding> tags = [];
    for(int i = 0; i<tagsName.length; i++){
      tags.add(Padding(padding: const EdgeInsets.symmetric(horizontal: 10), 
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: tagDecoration,
          child: Text(tagsName[i], style: TextStyle(color: backgroundColor),),
        ),
      ));
    }
    return tags;
  } 
}