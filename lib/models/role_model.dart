import 'dart:convert';

class RoleModel {
  final int id;
  final String name;
  final List<String> permissions;

  RoleModel({
    required this.id,
    required this.name,
    required this.permissions
  });

  factory RoleModel.fromJson(Map<String, dynamic> json){
    return RoleModel(
      id: json["id"] as int,
      name: json["name"] as String,
      permissions: json["permissions"] as List<String>
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "permissions": jsonEncode(permissions)
    };
  }
}