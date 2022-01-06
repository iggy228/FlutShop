import 'package:flut_shop/src/domain/products/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_response.freezed.dart';

@freezed
class ProductsResponse with _$ProductsResponse {
  const factory ProductsResponse.data(List<Product> product) =
      ProductsResponseData;
  const factory ProductsResponse.error(String message) = ProductsResponseError;
}
