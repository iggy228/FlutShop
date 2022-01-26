import 'dart:io';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flut_shop/src/domain/products/i_products_repository.dart';
import 'package:flut_shop/src/domain/products/product.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

part 'create_product_form_bloc.freezed.dart';
part 'create_product_form_event.dart';
part 'create_product_form_state.dart';

@injectable
class CreateProductFormBloc
    extends Bloc<CreateProductFormEvent, CreateProductFormState> {
  final FirebaseStorage _firebaseStorage;
  final IProductsRepository _productsRepository;

  CreateProductFormBloc(this._firebaseStorage, this._productsRepository)
      : super(CreateProductFormState.initial()) {
    on<CreateProductFormTitleChanged>(_changeTitle);
    on<CreateProductFormDescriptionChanged>(_changeDescription);
    on<CreateProductFormPriceChanged>(_changePrice);
    on<CreateProductFormPickImage>(_pickupImage);
    on<CreateProductFormSubmit>(_submit);
  }

  void _changeTitle(
    CreateProductFormTitleChanged event,
    Emitter emit,
  ) {
    emit(state.copyWith(title: event.title));
  }

  void _changeDescription(
    CreateProductFormDescriptionChanged event,
    Emitter emit,
  ) {
    emit(state.copyWith(description: event.description));
  }

  void _changePrice(
    CreateProductFormPriceChanged event,
    Emitter emit,
  ) {
    emit(state.copyWith(price: double.parse(event.price)));
  }

  Future<void> _pickupImage(
    CreateProductFormPickImage event,
    Emitter emit,
  ) async {
    final pickImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickImage != null) {
      final file = File(pickImage.path);
      emit(state.copyWith(imageFile: file));
    }
  }

  Future<void> _submit(
    CreateProductFormSubmit event,
    Emitter emit,
  ) async {
    final file = state.imageFile;

    if (file == null) {
      await showDialog(
          context: event.context,
          builder: (_) => AlertDialog(
                title: Text('Image was not pick up'),
              ));
      return;
    }
    if (state.price == 0.0) {
      await showDialog(
        context: event.context,
        builder: (_) => AlertDialog(
          title: Text('Not valid price'),
        ),
      );
      return;
    }

    try {
      final upload = await _firebaseStorage.ref(basename(file.path)).putFile(
            file,
          );
      final imageUrl = await upload.ref.getDownloadURL();

      final product = await _productsRepository.addProduct(Product(
        title: state.title,
        description: state.description,
        price: state.price,
        imageUrl: imageUrl,
      ));

      if (product != null) {
        await event.context.router.pop<Product?>(product);
      }
    } on FirebaseException catch (e) {
      await showDialog(
        context: event.context,
        builder: (_) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
      return;
    }
  }
}
