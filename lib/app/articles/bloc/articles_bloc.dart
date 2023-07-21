import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:superapp/domain/model/article.dart';
import 'package:superapp/domain/usecases/get_articles.dart';

part 'articles_event.dart';
part 'articles_state.dart';
part 'articles_bloc.freezed.dart';

@injectable
class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  ArticlesBloc(this._getArticlesUseCase) : super(const ArticlesState.initial()) {
    on<_GetArticles>(_getArticles);
  }

  final GetArticlesUseCase _getArticlesUseCase;

  FutureOr<void> _getArticles(_GetArticles event, Emitter<ArticlesState> emit) async {
    emit(const ArticlesState.loading());
    final itemsResponse = await _getArticlesUseCase.execute();
    itemsResponse.fold((error) {
      emit(ArticlesState.error(error));
    }, ((articles) async {
      emit(ArticlesState.success(articles));
    }));
  }
}
