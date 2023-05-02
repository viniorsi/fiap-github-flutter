class Owner {
  final String? login;
  final String? avatar;

  Owner({
    this.login,
    this.avatar,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        login: json["login"],
        avatar: json["avatar_url"],
      );
}
