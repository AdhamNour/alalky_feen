import 'package:af/models/Product.dart' as ProductModel;
import 'package:af/providers/ShopsProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Product extends StatelessWidget {
  final ProductModel.Product product;
  const Product({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final owenerShop = Provider.of<ShopsProvider>(context, listen: false)
        .getShopByID(targetShopID: product.ownerID);
    return Card(
      child: Container(
        child: ListTile(
          title: Text(product.productName),
          subtitle: Text(
              '${product.productPrice.toStringAsFixed(2)} Egp\nSelled by ${owenerShop.shopName}'),
          isThreeLine: true,
          dense: true,
          leading: ClipOval(
            child: Image.network(
              product.productImgUrl,
              width: 55,
              height: 55,
              fit: BoxFit.cover,
            ),
          ),
          trailing: IconButton(onPressed: (){print("buying");}, icon: Icon(Icons.shopping_cart)),
        ),
      ),
    );
  }
}
