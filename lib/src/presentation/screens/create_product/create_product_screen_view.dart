import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateProductScreenView extends StatefulWidget {
  const CreateProductScreenView({Key? key}) : super(key: key);

  @override
  State<CreateProductScreenView> createState() =>
      _CreateProductScreenViewState();
}

class _CreateProductScreenViewState extends State<CreateProductScreenView> {
  Image? image;

  Future<void> pickImage() async {
    final pickImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickImage != null) {
      final file = File(pickImage.path);
      setState(() {
        image = Image.file(file);
      });
    }
  }

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
            image ??
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: const Icon(Icons.image),
                ),
            ElevatedButton(
              onPressed: () => pickImage(),
              child: Text('Pick image'),
            ),
            SizedBox(height: 16),
            TextFormField(
              maxLength: 100,
              decoration: InputDecoration(
                hintText: 'Type title',
              ),
            ),
            TextFormField(
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Description ...',
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              // TODO implement decimal input formater
              inputFormatters: [],
              decoration: InputDecoration(
                hintText: '9.99',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
