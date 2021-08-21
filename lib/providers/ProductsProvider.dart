import 'package:af/constants/Constants.dart';
import 'package:af/models/Product.dart';
import 'package:flutter/widgets.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = CONSTANTS.generateProducts();
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
