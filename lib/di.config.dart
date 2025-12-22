// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:spendly/app/cubit/app_locale_cubit.dart' as _i855;
import 'package:spendly/app/cubit/app_theme_cubit.dart' as _i319;
import 'package:spendly/app/router/app_router.dart' as _i595;

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
    gh.singleton<_i319.AppThemeCubit>(() => _i319.AppThemeCubit());
    gh.singleton<_i855.AppLocaleCubit>(() => _i855.AppLocaleCubit());
    gh.singleton<_i595.AppRouter>(() => _i595.AppRouter());
    return this;
  }
}
