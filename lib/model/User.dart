
import 'dart:convert';
User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());
class User {
  String name;
  String email;
  String password;
  String token;



  User({
    this.name,
    this.email,
    this.password,
    this.token
  }
      );



  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    email: json["email"],
    password: json["password"],
    token: json["token"]
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "password": password,
    "token":token
  };
}