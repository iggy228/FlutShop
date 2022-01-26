import 'package:flut_shop/src/domain/products/product.dart';
import 'package:flut_shop/src/domain/products/products_response.dart';

abstract class IProductsRepository {
  Future<ProductsResponse> getAllProducts();
  Future<Product?> addProduct(Product product);
}
