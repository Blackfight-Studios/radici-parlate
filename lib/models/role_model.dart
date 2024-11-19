import 'dart:convert';

import 'package:radici_parlate/models/model.dart';

class RoleModel extends Model {
  final String name;
  final List<String> permissions;

  RoleModel({
    required super.id,
    required this.name,
    required this.permissions,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json){
    return RoleModel(
      id: json["id"] as int,
      name: json["name"] as String,
      permissions: json["permissions"] as List<String>
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "permissions": jsonEncode(permissions)
    };
  }
}