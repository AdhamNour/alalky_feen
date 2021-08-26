import 'dart:core';

import 'package:af/constants/Constants.dart';
import 'package:af/models/Shop.dart';
import 'package:flutter/material.dart';

class ShopsProvider with ChangeNotifier {
  List<Shop> _shops = [];
  void set shops(List<Shop> shops) {
    _shops = [...shops];
  }

  List<Shop> get shops {
    return [..._shops];
  }

  List<Shop> getShopsByType(String targetShopType) {
    return _shops
        .where((element) => element.shopType == targetShopType)
        .toList();
  }

  Shop getShopByID({required String targetShopID}) {
    return _shops.firstWhere((element) => element.id == targetShopID);
  }
}
