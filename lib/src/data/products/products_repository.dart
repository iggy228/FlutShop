import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flut_shop/src/domain/products/i_products_repository.dart';
import 'package:flut_shop/src/domain/products/product.dart';
import 'package:flut_shop/src/domain/products/products_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductsRepository)
class ProductsRepository implements IProductsRepository {
  final FirebaseFirestore _firestore;

  const ProductsRepository(this._firestore);

  @override
  Future<ProductsResponse> read() async {
    final collection = await _firestore.collection('products').get();

    final products =
        collection.docs.map((e) => Product.fromJson(e.data())).toList();

    return ProductsResponse.data(products);
  }
}
