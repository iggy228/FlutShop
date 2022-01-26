import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flut_shop/src/domain/products/i_products_repository.dart';
import 'package:flut_shop/src/domain/products/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'products_bloc.freezed.dart';
part 'products_event.dart';
part 'products_state.dart';

@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final IProductsRepository _productsRepository;

  ProductsBloc(this._productsRepository) : super(ProductsState.initial()) {
    on<ProductsEventGetProducts>(_getProducts);
    on<ProductsEventAddProduct>(_addProduct);
  }

  Future<void> _getProducts(
    ProductsEventGetProducts event,
    Emitter emit,
  ) async {
    final response = await _productsRepository.getAllProducts();
    response.when(
      data: (products) {
        emit(state.copyWith(products: products));
      },
      error: (message) {},
    );
  }

  void _addProduct(ProductsEventAddProduct event, Emitter<ProductsState> emit) {
    state.products.add(event.product);
  }
}
