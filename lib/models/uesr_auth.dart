class UserAuth {
  String? email;
  String? password;
  String? role;
  String? deviceToken;
  String? type;
  String? socialId;

  UserAuth(
      {required this.email,
      required this.password,
      required this.role,
      required this.deviceToken,
      required this.type,
      required this.socialId});

  UserAuth.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    role = json['role'];
    deviceToken = json['device_token'];
    type = json['type'];
    socialId = json['social_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['role'] = this.role;
    data['device_token'] = this.deviceToken;
    data['type'] = this.type;
    data['social_id'] = this.socialId;
    return data;
  }
}
