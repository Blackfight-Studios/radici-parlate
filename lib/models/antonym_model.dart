import 'package:radici_parlate/models/model.dart';

class AntonymModel extends Model {
  final int wordId;
  final int antonymId;

  AntonymModel({
    required super.id,
    required this.wordId,
    required this.antonymId
  });


  factory AntonymModel.fromJson(Map<String, dynamic> json){
    return AntonymModel(
        id: json["id"] as int,
        wordId: json["word_id"] as int,
        antonymId: json["antonym_id"] as int
    );
  }

  @override
  Map<String, dynamic> toJson(){
    return {
      "id": id,
      "word_id": wordId,
      "antonym_id": antonymId
    };
  }
}