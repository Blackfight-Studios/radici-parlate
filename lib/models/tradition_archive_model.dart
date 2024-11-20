import 'package:radici_parlate/models/archive_model.dart';

class TraditionArchiveModel extends ArchiveModel {
  final int traditionId;

  TraditionArchiveModel({
    required super.id,
    required super.url,
    required super.title,
    required super.description,
    required super.createdAt,
    required this.traditionId
  });

  factory TraditionArchiveModel.fromJson(Map<String, dynamic> json){
    return TraditionArchiveModel(
      id: json["id"] as int,
      traditionId: json["tradition_id"] as int,
      url: json["url"] as String,
      title: json["title"] as String,
      description: json["description"] as String,
      createdAt: DateTime.parse(json["created_at"] as String),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final id = <String, dynamic>{"tradition_id": traditionId};
    final json = super.toJson();
    json.addEntries(id.entries);
    return json;
  }

}