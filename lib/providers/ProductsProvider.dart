import 'package:af/constants/Constants.dart';
import 'package:af/models/Product.dart';
import 'package:flutter/widgets.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    Product(
        productID: '1',
        productName: 'battary',
        productPrice: 13.99,
        productTags: {'battary','bicycle'},
        productImgUrl:
            'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'bicycle1')
  ];
  void set products(List<Product> products) {
    _products = [...products];
  }

  List<Product> get products {
    return [..._products];
  }

  List<Product> filterByShopID({required String shopId}) {
    return _products.where((element) => element.ownerID == shopId).toList();
  }
}
