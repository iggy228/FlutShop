import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flut_shop/src/data/products/product_dto.dart';
import 'package:flut_shop/src/domain/products/i_products_repository.dart';
import 'package:flut_shop/src/domain/products/product.dart';
import 'package:flut_shop/src/domain/products/products_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductsRepository)
class ProductsRepository implements IProductsRepository {
  final FirebaseFirestore _firestore;

  const ProductsRepository(this._firestore);

  @override
  Future<ProductsResponse> readAll() async {
    try {
      final collection = await _firestore.collection('products').get();

      final List<Product> products = [];

      collection.docs.forEach(
        (doc) async {
          products.add(ProductDto.fromFirestore(doc).toDomain());
        },
      );

      return ProductsResponse.data(products);
    } catch (e) {
      return ProductsResponse.error(e.toString());
    }
  }
}
