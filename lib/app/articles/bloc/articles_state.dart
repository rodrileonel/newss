part of 'articles_bloc.dart';

@freezed
class ArticlesState with _$ArticlesState {
  const factory ArticlesState.initial() = _Initial;
  const factory ArticlesState.loading() = _Loading;
  const factory ArticlesState.error(String error) = _Error;
  const factory ArticlesState.success(List<Article>? articles) = _Success;
}
