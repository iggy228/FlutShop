import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flut_shop/src/core/routes/app_router.dart';
import 'package:flut_shop/src/domain/products/product.dart';
import 'package:flut_shop/src/presentation/bloc/home/products_bloc.dart';
import 'package:flut_shop/src/presentation/widgets/home/product_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome User'),
      ),
      floatingActionButton: FloatingActionButton(
        // screen with add new item
        onPressed: () => context.router.push(const CreateProductScreenRoute()),
        child: Icon(Icons.add),
      ),
      body: buildListView(context),
    );
  }

  Widget buildListView(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    if (deviceWidth < 450) {
      return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: context.watch<ProductsBloc>().state.products.length,
        itemBuilder: (context, index) {
          return buildProductListTile(
            context.read<ProductsBloc>().state.products[index],
          );
        },
      );
    } else {
      final int gridCount = deviceWidth ~/ 400;

      return GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
        ),
        itemCount: context.watch<ProductsBloc>().state.products.length,
        itemBuilder: (context, index) {
          return buildProductListTile(
            context.read<ProductsBloc>().state.products[index],
          );
        },
      );
    }
  }

  ProductListTile buildProductListTile(Product product) {
    return ProductListTile(
      image: CachedNetworkImage(
        imageUrl: product.imageUrl,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      title: product.title,
      description: product.description,
      price: '${product.price}€',
    );
  }
}
