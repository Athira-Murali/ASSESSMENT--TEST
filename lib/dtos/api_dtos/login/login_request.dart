class LoginRequest {
  LoginRequest({
    required this.userName,
    required this.password,
    this.authType,
  });

  String userName;
  String password;
  String? authType;

  Map<String, dynamic> toBody() {
    final map = {
      "userName": userName,
      "password": password,
      "authType":"FORMS"
    };
    return map;
  }
}
