// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/core/api/api.dart' as _i4;
import 'package:app/core/route/route.dart' as _i3;
import 'package:app/features/imageGen/presentation/cubit/image_gen_cubit.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.$AppRouter>(() => _i3.$AppRouter());
    gh.lazySingleton<_i4.Api>(() => _i4.Api());
    gh.lazySingleton<_i5.ImageGenCubit>(() => _i5.ImageGenCubit());
    return this;
  }
}
