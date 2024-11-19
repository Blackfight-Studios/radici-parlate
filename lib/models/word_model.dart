import 'package:radici_parlate/utils/gender_enum.dart';
import 'package:radici_parlate/utils/type_enum.dart';

class WordModel {
  final int id;
  final String word;
  final String translation;
  final String description;
  final GenderEnum gender;
  final TypeEnum type;
  final String plural;
  final DateTime createdAt;
  final DateTime updatedAt;

  WordModel({
    required this.id,
    required this.word,
    required this.translation,
    required this.description,
    required this.gender,
    required this.type,
    required this.plural,
    required this.createdAt,
    required this.updatedAt
  });

  factory WordModel.fromJson(Map<String, dynamic> json){
    return WordModel(
        id: json["id"] as int,
        word: json["word"] as String,
        translation: json["translation"] as String,
        description: json["description"] as String,
        gender: GenderEnum.fromString(json["gender"] as String),
        type: TypeEnum.fromString(json["type"] as String),
        plural: json["plural"],
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String)
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "id": id,
      "word": word,
      "translation": translation,
      "description": description,
      "gender": gender.toString(),
      "type": gender.toString(),
      "plural": plural,
      "created_at": createdAt.toIso8601String(),
      "updated_at": updatedAt.toIso8601String(),
    };
  }

}