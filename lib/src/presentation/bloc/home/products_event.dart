part of 'products_bloc.dart';

@immutable
abstract class ProductsEvent {}

class ProductsEventGetProducts extends ProductsEvent {}

class ProductsEventAddProduct extends ProductsEvent {
  final Product product;

  ProductsEventAddProduct(this.product);
}
