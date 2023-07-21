import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    String? author,
        String? title,
        String? description,
        String? url,
        String? urlToImage,
        DateTime? publishedAt,
        String? content,
  }) = _Article;
}
