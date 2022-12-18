// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio_provider/dio_provider.dart' as _i3;
import 'package:dio_provider/src/module.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioProvider = _$DioProvider();
    gh.lazySingleton<_i3.Dio>(() => dioProvider.dio(
          gh<String>(instanceName: 'BaseUrl'),
          gh<Map<String, dynamic>>(instanceName: 'Headers'),
        ));
    gh.factory<Map<String, dynamic>>(
      () => dioProvider.headers,
      instanceName: 'Headers',
    );
    gh.factory<String>(
      () => dioProvider.baseUrl,
      instanceName: 'BaseUrl',
    );
    return this;
  }
}

class _$DioProvider extends _i4.DioProvider {}
