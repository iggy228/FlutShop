import 'package:flut_shop/src/domain/products/products_response.dart';

abstract class IProductsRepository {
  Future<ProductsResponse> read();
}
