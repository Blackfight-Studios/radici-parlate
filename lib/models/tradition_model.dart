import 'package:radici_parlate/models/model.dart';

class TraditionModel extends Model{
  final String name;
  final String summary;
  final String description;
  final int regionId;
  final DateTime createdAt;
  final DateTime updatedAt;

  TraditionModel({
    required super.id,
    required this.name,
    required this.summary,
    required this.description,
    required this.regionId,
    required this.createdAt,
    required this.updatedAt
  });

  factory TraditionModel.fromJson(Map<String, dynamic> json){
    return TraditionModel(
        id: json["id"] as int,
        name: json["name"] as String,
        summary: json["summary"] as String,
        description: json["description"] as String,
        regionId: json["region_id"] as int,
        createdAt: DateTime.parse(json["createdAt"] as String),
        updatedAt: DateTime.parse(json["updatedAt"] as String)
    );
  }

  @override
  Map<String, dynamic> toJson(){
    return {
      "id": id,
      "name": name,
      "summary": summary,
      "description": description,
      "region_id": regionId,
      "created_at": createdAt.toIso8601String(),
      "updated_at": updatedAt.toIso8601String(),
    };
  }

}