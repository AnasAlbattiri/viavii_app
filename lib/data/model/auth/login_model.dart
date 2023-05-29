import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  int status;
  String accessToken;
  String tokenType;
  int expiresIn;

  LoginModel({
    required this.status,
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"],
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    expiresIn: json["expires_in"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "access_token": accessToken,
    "token_type": tokenType,
    "expires_in": expiresIn,
  };
}
