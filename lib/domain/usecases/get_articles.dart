import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:superapp/data/dto/headlines_dto.dart';
import 'package:superapp/data/repository/news_repository.dart';
import 'package:superapp/domain/model/article.dart';

@injectable
class GetArticlesUseCase {
  GetArticlesUseCase(this._mwRepository);
  final NewsRepository? _mwRepository;

  Future<Either<String, List<Article>?>> execute() async {
    List<Article> r = [];
    final response = await _mwRepository!.getHeadLines();
    return response.fold((error) {
      return Left(error);
    }, (dto) async {
      for (ArticleDto article in dto?.articles ?? []) {
        r.add(Article(
          author: article.author,
          title: article.title,
          description: article.description,
          urlToImage: article.urlToImage,
        ));
      }
      return Right(r);
    });
  }
}
