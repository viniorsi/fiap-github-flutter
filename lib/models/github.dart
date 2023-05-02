import 'package:github/models/repository.dart';

class GitHub {
  final int? totalCount;
  final Repositories? items;

  GitHub({
    this.totalCount,
    this.items,
  });

  factory GitHub.fromJson(Map<String, dynamic> json) => GitHub(
        totalCount: json["total_count"],
        items: json["items"] == null
            ? []
            : Repositories.from(
                json["items"]!.map((item) => Repository.fromJson(item)),
              ),
      );
}
