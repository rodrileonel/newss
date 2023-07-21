// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:superapp/app/articles/bloc/articles_bloc.dart' as _i12;
import 'package:superapp/core/config/config.dart' as _i3;
import 'package:superapp/core/config/dev_config.dart' as _i6;
import 'package:superapp/core/config/prod_config.dart' as _i5;
import 'package:superapp/core/config/stg_config.dart' as _i4;
import 'package:superapp/core/di/repository_module.dart' as _i13;
import 'package:superapp/data/api/news_api.dart' as _i11;
import 'package:superapp/data/api/register_api.dart' as _i14;
import 'package:superapp/data/repository/news_repository.dart' as _i8;
import 'package:superapp/data/services/http_service.dart' as _i9;
import 'package:superapp/data/services/local_storage.dart' as _i10;
import 'package:superapp/domain/usecases/get_articles.dart' as _i7;

const String _stg = 'stg';
const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerApi = _$RegisterApi();
    final registerRepositories = _$RegisterRepositories();
    gh.factory<_i3.Config>(
      () => _i4.StgConfig(),
      registerFor: {_stg},
    );
    gh.factory<_i3.Config>(
      () => _i5.ProdConfig(),
      registerFor: {_prod},
    );
    gh.factory<_i3.Config>(
      () => _i6.DevConfig(),
      registerFor: {_dev},
    );
    gh.factory<_i7.GetArticlesUseCase>(
        () => _i7.GetArticlesUseCase(gh<_i8.NewsRepository>()));
    await gh.lazySingletonAsync<_i9.HttpService>(
      () => registerApi.api(gh<_i3.Config>()),
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i10.LocalStorage>(
      () => registerApi.storage(),
      preResolve: true,
    );
    gh.lazySingleton<_i11.NewsApi>(() => _i11.NewsApi(
          gh<_i9.HttpService>(),
          gh<_i10.LocalStorage>(),
        ));
    gh.lazySingleton<_i8.NewsRepository>(
        () => registerRepositories.appInfoRepo());
    gh.factory<_i12.ArticlesBloc>(
        () => _i12.ArticlesBloc(gh<_i7.GetArticlesUseCase>()));
    return this;
  }
}

class _$RegisterRepositories extends _i13.RegisterRepositories {}

class _$RegisterApi extends _i14.RegisterApi {}
