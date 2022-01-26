import 'package:flut_shop/src/core/utils/decimal_formatter.dart';
import 'package:flut_shop/src/core/utils/validators/not_empty_validator.dart';
import 'package:flut_shop/src/presentation/bloc/create_product/create_product_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateProductScreenView extends StatefulWidget {
  const CreateProductScreenView({Key? key}) : super(key: key);

  @override
  State<CreateProductScreenView> createState() =>
      _CreateProductScreenViewState();
}

class _CreateProductScreenViewState extends State<CreateProductScreenView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('New Product'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            buildImageView(context),
            ElevatedButton(
              onPressed: () => context.read<CreateProductFormBloc>().add(
                    CreateProductFormPickImage(),
                  ),
              child: Text('Pick image'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              maxLength: 100,
              onChanged: (val) => context.read<CreateProductFormBloc>().add(
                    CreateProductFormTitleChanged(val),
                  ),
              validator: notEmptyValidator,
              decoration: InputDecoration(
                hintText: 'Type title',
              ),
            ),
            TextFormField(
              maxLines: 6,
              onChanged: (val) => context.read<CreateProductFormBloc>().add(
                    CreateProductFormDescriptionChanged(val),
                  ),
              validator: notEmptyValidator,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Description ...',
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.end,
              inputFormatters: [DecimalFormatter()],
              onChanged: (val) => context.read<CreateProductFormBloc>().add(
                    CreateProductFormPriceChanged(val),
                  ),
              validator: notEmptyValidator,
              decoration: InputDecoration(
                hintText: 'Price: 9.99',
                suffixText: '\u{20AC}',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.read<CreateProductFormBloc>().add(
                    CreateProductFormSubmit(context),
                  ),
              child: Text('Vytvorit'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageView(BuildContext context) {
    final imageFile = context.watch<CreateProductFormBloc>().state.imageFile;
    if (imageFile == null) {
      return const AspectRatio(
        aspectRatio: 16 / 9,
        child: Icon(Icons.image),
      );
    }
    return Image.file(imageFile);
  }
}
