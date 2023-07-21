import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:superapp/data/api/client.dart';
import 'package:superapp/data/api/endpoints.dart';
import 'package:superapp/data/dto/error.dart';
import 'package:superapp/data/dto/headlines_dto.dart';
import 'package:superapp/data/services/http_service.dart';
import 'package:superapp/data/services/local_storage.dart';

@lazySingleton
class NewsApi {
  final HttpService _httpService;
  final LocalStorage _storage;
  NewsApi(this._httpService, this._storage);

  Future<Either<Failure, HeadlinesDto?>> getHeadLines() async {
    final req = _httpService.get(NewsEndpoints.headlines);
    return await ApiClient.instance.request(headlinesDtoFromJson, req, NewsEndpoints.headlines);
  }
}
