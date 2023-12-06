// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/Downloads_bloc/downloads_bloc.dart' as _i9;
import '../../../application/fastLagh/fastLagh_bloc/fast_lagh_bloc.dart'
    as _i10;
import '../../../application/home/home_bloc.dart' as _i11;
import '../../../application/hotandnew/hotandnew_bloc/hotandnew_bloc.dart'
    as _i12;
import '../../../application/search_bloc/bloc/search_bloc.dart' as _i13;
import '../../../infrastructure/downloads/downloads_repo.dart' as _i6;
import '../../../infrastructure/hotandnew/hotandnewImp.dart' as _i4;
import '../../../infrastructure/search/search_implimentation.dart' as _i8;
import '../../downloads/i_downloads_repo.dart' as _i5;
import '../../hotandnew%20/hotandnewrep.dart' as _i3;
import '../../search/seach_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.Hotandnewrep>(() => _i4.HotandnewImp());
  gh.lazySingleton<_i5.IDownloadsRepo>(() => _i6.DownloadRepository());
  gh.lazySingleton<_i7.SearchRepositoy>(() => _i8.searchRepimly());
  gh.factory<_i9.DownloadsBloc>(
      () => _i9.DownloadsBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i10.FastLaghBloc>(
      () => _i10.FastLaghBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i12.HotandnewBloc>(
      () => _i12.HotandnewBloc(get<_i3.Hotandnewrep>()));
  gh.factory<_i13.SearchBloc>(() => _i13.SearchBloc(
        get<_i5.IDownloadsRepo>(),
        get<_i7.SearchRepositoy>(),
      ));
  return get;
}
