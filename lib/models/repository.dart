import 'package:github/models/owner.dart';

class Repository {
  final int? id;
  final String? name;
  final Owner? owner;
  final String? htmlUrl;
  final String? description;
  final String? url;

  Repository({
    this.id,
    this.name,
    this.owner,
    this.htmlUrl,
    this.description,
    this.url,
  });

  factory Repository.fromJson(Map<String, dynamic> json) => Repository(
        id: json["id"],
        name: json["name"],
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
        htmlUrl: json["html_url"],
        description: json["description"],
        url: json["url"],
      );
}

typedef Repositories = List<Repository>;
