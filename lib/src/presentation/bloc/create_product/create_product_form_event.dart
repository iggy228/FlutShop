part of 'create_product_form_bloc.dart';

@immutable
abstract class CreateProductFormEvent {}

class CreateProductFormTitleChanged extends CreateProductFormEvent {
  final String title;

  CreateProductFormTitleChanged(this.title);
}

class CreateProductFormDescriptionChanged extends CreateProductFormEvent {
  final String description;

  CreateProductFormDescriptionChanged(this.description);
}

class CreateProductFormPriceChanged extends CreateProductFormEvent {
  final String price;

  CreateProductFormPriceChanged(this.price);
}

class CreateProductFormPickImage extends CreateProductFormEvent {}

class CreateProductFormSubmit extends CreateProductFormEvent {
  final BuildContext context;

  CreateProductFormSubmit(this.context);
}
