import 'package:radici_parlate/models/model.dart';

class SynonymModel extends Model {
  final int wordId;
  final int synonymId;

  SynonymModel({
    required super.id,
    required this.wordId,
    required this.synonymId
  });


  factory SynonymModel.fromJson(Map<String, dynamic> json){
    return SynonymModel(
        id: json["id"] as int,
        wordId: json["word_id"] as int,
        synonymId: json["synonym_id"] as int
    );
  }

  @override
  Map<String, dynamic> toJson(){
    return {
      "id": id,
      "word_id": wordId,
      "synonym_id": synonymId
    };
  }
}