import 'package:radici_parlate/models/model.dart';

class UserModel extends Model{
  final String username;
  final String email;
  final String password;
  final int roleId;
  final DateTime createdAt;

   UserModel({
     required super.id,
    required this.username,
    required this.email,
    required this.password,
    required this.roleId,
    required this.createdAt,
  });

   factory UserModel.fromJson(Map<String, dynamic> json){
     return UserModel(
         id: json["id"] as int,
         username: json["username"] as String,
         email: json["email"] as String,
         password: json["password"] as String,
         roleId: json["role_id"] as int,
         createdAt: DateTime.parse(json['created_at'] as String),
     );
   }

   @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "username": username,
      "email": email,
      "password": password,
      "role_id": roleId,
      "created_at": createdAt.toIso8601String()
    };
  }
}