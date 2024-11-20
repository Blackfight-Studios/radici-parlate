import 'package:radici_parlate/models/model.dart';

abstract class ArchiveModel extends Model {
  final String url;
  final String title;
  final String description;
  final DateTime createdAt;

  ArchiveModel({
    required super.id,
    required this.url,
    required this.title,
    required this.description,
    required this.createdAt
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "url": url,
      "title": title,
      "description": description,
      "created_at": createdAt.toIso8601String()
    };
  }
}