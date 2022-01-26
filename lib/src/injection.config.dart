// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'data/auth/auth_facade.dart' as _i8;
import 'data/core/firebase_injectable_module.dart' as _i14;
import 'data/products/products_repository.dart' as _i10;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/products/i_products_repository.dart' as _i9;
import 'presentation/bloc/auth/login_form_bloc.dart' as _i11;
import 'presentation/bloc/create_product/create_product_form_bloc.dart' as _i13;
import 'presentation/bloc/home/products_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.AuthFacade(get<_i3.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i9.IProductsRepository>(
      () => _i10.ProductsRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i11.LoginFormBloc>(
      () => _i11.LoginFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i12.ProductsBloc>(
      () => _i12.ProductsBloc(get<_i9.IProductsRepository>()));
  gh.factory<_i13.CreateProductFormBloc>(() => _i13.CreateProductFormBloc(
      get<_i5.FirebaseStorage>(), get<_i9.IProductsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
