import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:task_elevate/shared/api_constants.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: ApiConstants.baseUrl,
          receiveDataWhenStatusError: true,
        ),
      );
}
