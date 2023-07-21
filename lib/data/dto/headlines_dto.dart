// To parse this JSON data, do
//
//     final headlinesDto = headlinesDtoFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'headlines_dto.freezed.dart';
part 'headlines_dto.g.dart';

HeadlinesDto headlinesDtoFromJson(String str) => HeadlinesDto.fromJson(json.decode(str));

String headlinesDtoToJson(HeadlinesDto data) => json.encode(data.toJson());

@freezed
class HeadlinesDto with _$HeadlinesDto {
    const factory HeadlinesDto({
        String? status,
        int? totalResults,
        List<ArticleDto>? articles,
    }) = _HeadlinesDto;

    factory HeadlinesDto.fromJson(Map<String, dynamic> json) => _$HeadlinesDtoFromJson(json);
}

@freezed
class ArticleDto with _$ArticleDto {
    const factory ArticleDto({
        SourceDto? source,
        String? author,
        String? title,
        String? description,
        String? url,
        String? urlToImage,
        DateTime? publishedAt,
        String? content,
    }) = _ArticleDto;

    factory ArticleDto.fromJson(Map<String, dynamic> json) => _$ArticleDtoFromJson(json);
}

@freezed
class SourceDto with _$SourceDto {
    const factory SourceDto({
        String? id,
        String? name,
    }) = _SourceDto;

    factory SourceDto.fromJson(Map<String, dynamic> json) => _$SourceDtoFromJson(json);
}
