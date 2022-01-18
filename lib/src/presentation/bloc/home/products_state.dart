part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required List<Product> products,
  }) = _ProductsState;

  factory ProductsState.initial() => const ProductsState(products: []);
}
