import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:superapp/data/api/news_api.dart';
import 'package:superapp/data/dto/headlines_dto.dart';

abstract class NewsRepository {
  Future<Either<String, HeadlinesDto?>> getHeadLines();
}

class LRepositoryNetwork implements NewsRepository {
  final mwApi = GetIt.I.get<NewsApi>();

  @override
  Future<Either<String, HeadlinesDto?>> getHeadLines() async {
    final response = await mwApi.getHeadLines();
    return response.fold((error) => Left(error.message), Right.new);
  }
}
