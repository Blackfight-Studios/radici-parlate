import 'package:radici_parlate/models/model.dart';

class RootModel extends Model {
  final int wordId;
  final String rootWord;
  final String language;
  final String description;

  RootModel({
    required super.id,
    required this.wordId,
    required this.rootWord,
    required this.language,
    required this.description
  });

  factory RootModel.fromJson(Map<String, dynamic> json){
    return RootModel(
        id: json["id"] as int,
        wordId: json["word_id"] as int,
        rootWord: json["root_word"] as String,
        language: json["language"] as String,
        description: json["description"] as String
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "word_id": wordId,
      "root_word": rootWord,
      "language": language,
      "description": description,
    };
  }
}