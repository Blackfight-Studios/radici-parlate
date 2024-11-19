class UserModel {
  final int id;
  final String username;
  final String email;
  final String password;
  final int roleId;
  final DateTime createdAt;

   UserModel({
    required this.id,
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
         roleId: json["roleId"] as int,
         createdAt: DateTime.parse(json['created_at'] as String),
     );
   }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "username": username,
      "email": email,
      "password": password,
      "roleId": roleId,
      "created_at": createdAt.toIso8601String()
    };
  }
}