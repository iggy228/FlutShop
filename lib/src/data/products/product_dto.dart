import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flut_shop/src/domain/products/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    required String id,
    required String title,
    required String description,
    required double price,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id,
      title: product.title,
      description: product.description,
      price: product.price,
    );
  }

  Product toDomain() {
    return Product(
      id: id,
      title: title,
      description: description,
      price: price,
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromFirestore(DocumentSnapshot doc) {
    final json = doc.data() as Map<String, dynamic>;

    json['id'] = doc.id;

    return ProductDto.fromJson(json);
  }
}
