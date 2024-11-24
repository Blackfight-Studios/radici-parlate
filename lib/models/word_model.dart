import 'package:radici_parlate/models/model.dart';
import 'package:radici_parlate/utils/gender_enum.dart';
import 'package:radici_parlate/utils/type_enum.dart';

class WordModel extends Model{
  final String word;
  final String translation;
  final String description;
  final GenderEnum gender;
  final TypeEnum type;
  final String plural;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int lastModifiedBy;
  final double version;

  WordModel({
    required super.id,
    required this.word,
    required this.translation,
    required this.description,
    required this.gender,
    required this.type,
    required this.plural,
    required this.createdAt,
    required this.updatedAt,
    required this.lastModifiedBy,
    required this.version
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
        updatedAt: DateTime.parse(json['updated_at'] as String),
        lastModifiedBy: json["last_modified_by"] as int,
        version: json["version"] as double
    );
  }

  @override
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
      "last_modified_by": lastModifiedBy,
      "version": version
    };
  }

}