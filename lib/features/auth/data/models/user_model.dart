class UserModel {
  final String message;
  final bool isAuthenticated;
  final String username;
  final String email;
  final String token;
  final String expiresOn;

  UserModel({
    required this.message,
    required this.isAuthenticated,
    required this.username,
    required this.email,
    required this.token,
    required this.expiresOn,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      message: json['message'] ??'',
      isAuthenticated: json['isAuthenticated'] ?? false,
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      token: json['token'] ?? '',
      expiresOn: json['expiresOn'] ?? '',
    );
  }
}
