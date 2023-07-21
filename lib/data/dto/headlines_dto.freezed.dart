// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'headlines_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeadlinesDto _$HeadlinesDtoFromJson(Map<String, dynamic> json) {
  return _HeadlinesDto.fromJson(json);
}

/// @nodoc
mixin _$HeadlinesDto {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<ArticleDto>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadlinesDtoCopyWith<HeadlinesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadlinesDtoCopyWith<$Res> {
  factory $HeadlinesDtoCopyWith(
          HeadlinesDto value, $Res Function(HeadlinesDto) then) =
      _$HeadlinesDtoCopyWithImpl<$Res, HeadlinesDto>;
  @useResult
  $Res call({String? status, int? totalResults, List<ArticleDto>? articles});
}

/// @nodoc
class _$HeadlinesDtoCopyWithImpl<$Res, $Val extends HeadlinesDto>
    implements $HeadlinesDtoCopyWith<$Res> {
  _$HeadlinesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeadlinesDtoCopyWith<$Res>
    implements $HeadlinesDtoCopyWith<$Res> {
  factory _$$_HeadlinesDtoCopyWith(
          _$_HeadlinesDto value, $Res Function(_$_HeadlinesDto) then) =
      __$$_HeadlinesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, int? totalResults, List<ArticleDto>? articles});
}

/// @nodoc
class __$$_HeadlinesDtoCopyWithImpl<$Res>
    extends _$HeadlinesDtoCopyWithImpl<$Res, _$_HeadlinesDto>
    implements _$$_HeadlinesDtoCopyWith<$Res> {
  __$$_HeadlinesDtoCopyWithImpl(
      _$_HeadlinesDto _value, $Res Function(_$_HeadlinesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$_HeadlinesDto(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeadlinesDto implements _HeadlinesDto {
  const _$_HeadlinesDto(
      {this.status, this.totalResults, final List<ArticleDto>? articles})
      : _articles = articles;

  factory _$_HeadlinesDto.fromJson(Map<String, dynamic> json) =>
      _$$_HeadlinesDtoFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  final List<ArticleDto>? _articles;
  @override
  List<ArticleDto>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HeadlinesDto(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeadlinesDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeadlinesDtoCopyWith<_$_HeadlinesDto> get copyWith =>
      __$$_HeadlinesDtoCopyWithImpl<_$_HeadlinesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeadlinesDtoToJson(
      this,
    );
  }
}

abstract class _HeadlinesDto implements HeadlinesDto {
  const factory _HeadlinesDto(
      {final String? status,
      final int? totalResults,
      final List<ArticleDto>? articles}) = _$_HeadlinesDto;

  factory _HeadlinesDto.fromJson(Map<String, dynamic> json) =
      _$_HeadlinesDto.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  List<ArticleDto>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$_HeadlinesDtoCopyWith<_$_HeadlinesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) {
  return _ArticleDto.fromJson(json);
}

/// @nodoc
mixin _$ArticleDto {
  SourceDto? get source => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleDtoCopyWith<ArticleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDtoCopyWith<$Res> {
  factory $ArticleDtoCopyWith(
          ArticleDto value, $Res Function(ArticleDto) then) =
      _$ArticleDtoCopyWithImpl<$Res, ArticleDto>;
  @useResult
  $Res call(
      {SourceDto? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      DateTime? publishedAt,
      String? content});

  $SourceDtoCopyWith<$Res>? get source;
}

/// @nodoc
class _$ArticleDtoCopyWithImpl<$Res, $Val extends ArticleDto>
    implements $ArticleDtoCopyWith<$Res> {
  _$ArticleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceDto?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SourceDtoCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $SourceDtoCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleDtoCopyWith<$Res>
    implements $ArticleDtoCopyWith<$Res> {
  factory _$$_ArticleDtoCopyWith(
          _$_ArticleDto value, $Res Function(_$_ArticleDto) then) =
      __$$_ArticleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SourceDto? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      DateTime? publishedAt,
      String? content});

  @override
  $SourceDtoCopyWith<$Res>? get source;
}

/// @nodoc
class __$$_ArticleDtoCopyWithImpl<$Res>
    extends _$ArticleDtoCopyWithImpl<$Res, _$_ArticleDto>
    implements _$$_ArticleDtoCopyWith<$Res> {
  __$$_ArticleDtoCopyWithImpl(
      _$_ArticleDto _value, $Res Function(_$_ArticleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_ArticleDto(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as SourceDto?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleDto implements _ArticleDto {
  const _$_ArticleDto(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory _$_ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleDtoFromJson(json);

  @override
  final SourceDto? source;
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? urlToImage;
  @override
  final DateTime? publishedAt;
  @override
  final String? content;

  @override
  String toString() {
    return 'ArticleDto(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleDto &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source, author, title,
      description, url, urlToImage, publishedAt, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleDtoCopyWith<_$_ArticleDto> get copyWith =>
      __$$_ArticleDtoCopyWithImpl<_$_ArticleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleDtoToJson(
      this,
    );
  }
}

abstract class _ArticleDto implements ArticleDto {
  const factory _ArticleDto(
      {final SourceDto? source,
      final String? author,
      final String? title,
      final String? description,
      final String? url,
      final String? urlToImage,
      final DateTime? publishedAt,
      final String? content}) = _$_ArticleDto;

  factory _ArticleDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleDto.fromJson;

  @override
  SourceDto? get source;
  @override
  String? get author;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  String? get urlToImage;
  @override
  DateTime? get publishedAt;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleDtoCopyWith<_$_ArticleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceDto _$SourceDtoFromJson(Map<String, dynamic> json) {
  return _SourceDto.fromJson(json);
}

/// @nodoc
mixin _$SourceDto {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceDtoCopyWith<SourceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceDtoCopyWith<$Res> {
  factory $SourceDtoCopyWith(SourceDto value, $Res Function(SourceDto) then) =
      _$SourceDtoCopyWithImpl<$Res, SourceDto>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SourceDtoCopyWithImpl<$Res, $Val extends SourceDto>
    implements $SourceDtoCopyWith<$Res> {
  _$SourceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourceDtoCopyWith<$Res> implements $SourceDtoCopyWith<$Res> {
  factory _$$_SourceDtoCopyWith(
          _$_SourceDto value, $Res Function(_$_SourceDto) then) =
      __$$_SourceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_SourceDtoCopyWithImpl<$Res>
    extends _$SourceDtoCopyWithImpl<$Res, _$_SourceDto>
    implements _$$_SourceDtoCopyWith<$Res> {
  __$$_SourceDtoCopyWithImpl(
      _$_SourceDto _value, $Res Function(_$_SourceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_SourceDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourceDto implements _SourceDto {
  const _$_SourceDto({this.id, this.name});

  factory _$_SourceDto.fromJson(Map<String, dynamic> json) =>
      _$$_SourceDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SourceDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourceDtoCopyWith<_$_SourceDto> get copyWith =>
      __$$_SourceDtoCopyWithImpl<_$_SourceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceDtoToJson(
      this,
    );
  }
}

abstract class _SourceDto implements SourceDto {
  const factory _SourceDto({final String? id, final String? name}) =
      _$_SourceDto;

  factory _SourceDto.fromJson(Map<String, dynamic> json) =
      _$_SourceDto.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SourceDtoCopyWith<_$_SourceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
