import 'package:af/components/Product.dart';
import 'package:af/models/Shop.dart';
import 'package:af/providers/ProductsProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);
  static final routeName = "shop-screen";

  @override
  Widget build(BuildContext context) {
    final params =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final Shop paramsShop = params['shop'] as Shop;
    final products = Provider.of<ProductProvider>(context)
        .filterByShopID(shopId: paramsShop.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(paramsShop.shopName),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Product(
          product: products[index],
        ),
        itemCount: products.length,
      ),
    );
  }
}
