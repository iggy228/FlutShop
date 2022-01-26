part of 'create_product_form_bloc.dart';

@freezed
class CreateProductFormState with _$CreateProductFormState {
  const factory CreateProductFormState({
    required String title,
    required String description,
    required double price,
    File? imageFile,
  }) = _CreateProductFormState;

  factory CreateProductFormState.initial() {
    return const CreateProductFormState(title: '', description: '', price: 0);
  }
}
