// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:task_elevate/products/data/data_source/remote/products_api_remote_data_source.dart'
    as _i467;
import 'package:task_elevate/products/data/data_source/remote/products_remote_data_source.dart'
    as _i905;
import 'package:task_elevate/products/data/repositories/products_repositories.dart'
    as _i25;
import 'package:task_elevate/products/view_model/cubit/products_cubit.dart'
    as _i158;
import 'package:task_elevate/shared/di/register_module.dart' as _i926;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i905.ProductsRemoteDataSource>(
        () => _i467.ProductsApiRemoteDataSource(gh<_i361.Dio>()));
    gh.singleton<_i25.ProductsRepositories>(
        () => _i25.ProductsRepositories(gh<_i905.ProductsRemoteDataSource>()));
    gh.singleton<_i158.ProductsCubit>(
        () => _i158.ProductsCubit(gh<_i25.ProductsRepositories>()));
    return this;
  }
}

class _$RegisterModule extends _i926.RegisterModule {}
