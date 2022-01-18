// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'data/auth/auth_facade.dart' as _i7;
import 'data/core/firebase_injectable_module.dart' as _i12;
import 'data/products/products_repository.dart' as _i9;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/products/i_products_repository.dart' as _i8;
import 'presentation/bloc/auth/login_form_bloc.dart' as _i10;
import 'presentation/bloc/home/products_bloc.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.AuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i8.IProductsRepository>(
      () => _i9.ProductsRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i10.LoginFormBloc>(
      () => _i10.LoginFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i11.ProductsBloc>(
      () => _i11.ProductsBloc(get<_i8.IProductsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i12.FirebaseInjectableModule {}
