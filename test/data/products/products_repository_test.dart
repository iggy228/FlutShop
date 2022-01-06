import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flut_shop/src/data/products/products_repository.dart';

Future<void> main() async {
  await Firebase.initializeApp();

  final productsRepository = ProductsRepository(FirebaseFirestore.instance);
}
