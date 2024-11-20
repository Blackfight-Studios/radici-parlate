import 'package:radici_parlate/models/archive_model.dart';

class WOrdArchiveModel extends ArchiveModel {
  final int wordId;

  WOrdArchiveModel({
    required super.id,
    required super.url,
    required super.title,
    required super.description,
    required super.createdAt,
    required this.wordId
  });

  factory WOrdArchiveModel.fromJson(Map<String, dynamic> json){
    return WOrdArchiveModel(
      id: json["id"] as int,
      wordId: json["word_id"] as int,
      url: json["url"] as String,
      title: json["title"] as String,
      description: json["description"] as String,
      createdAt: DateTime.parse(json["created_at"] as String),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final id = <String, dynamic>{"word_id": wordId};
    final json = super.toJson();
    json.addEntries(id.entries);
    return json;
  }

}