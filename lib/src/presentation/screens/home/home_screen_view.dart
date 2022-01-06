import 'package:flut_shop/src/gen/assets.gen.dart';
import 'package:flut_shop/src/presentation/widgets/home/product_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome User'),
      ),
      body: buildListView(context),
    );
  }

  Widget buildListView(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    if (deviceWidth < 450) {
      return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 10,
        itemBuilder: (context, index) {
          return buildProductListTile();
        },
      );
    } else {
      final int gridCount = deviceWidth ~/ 400;

      return GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return buildProductListTile();
        },
      );
    }
  }

  ProductListTile buildProductListTile() {
    return ProductListTile(
      image: Assets.images.loremIpsum.image(fit: BoxFit.cover),
      title: 'Lorem ipsum sit dolor',
      description:
          'Lorem ipsum dolor amet surf je pekne modry v krasnej zltkastej farby a ruzovej naplne s mliecnym kremom',
      price: '120.90€',
      rating: 4,
    );
  }
}
