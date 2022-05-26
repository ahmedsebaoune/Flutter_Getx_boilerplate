import 'dart:convert';

class LoginRequest {
  LoginRequest({
    required this.staff,
    required this.password,
  });

  String staff;
  String password;

  factory LoginRequest.fromRawJson(String str) =>
      LoginRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
      staff: json["staff"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "staff": staff,
        "password": password,
      };
}
