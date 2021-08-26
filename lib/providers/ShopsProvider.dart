import 'dart:core';

import 'package:af/constants/Constants.dart';
import 'package:af/models/Shop.dart';
import 'package:flutter/material.dart';

class ShopsProvider with ChangeNotifier {
  List<Shop> _shops = [
    Shop(
        id: 'bicycle1',
        shopName: "abu el gokh",
        shopRating: 4,
        shopImageUrl: "./assets/bicycles/abo_elgo5.jpg",
        shopType: CONSTANTS.BICYCLE,
        shopAddress: "17 Roushdy Basha, Asahah, Abdeen, Cairo"),
    Shop(
        id: 'bicycle2',
        shopName: "Crazy Bike",
        shopRating: 3.5,
        shopImageUrl: './assets/bicycles/crazy_bike.jpg',
        shopType: CONSTANTS.BICYCLE,
        shopAddress: "Roushdy Basha, Asahah, Abdeen, Cairo"),
    Shop(
        id: 'bicycle3',
        shopName: "Trinx",
        shopRating: 3.1,
        shopImageUrl: './assets/bicycles/trinx.jpg',
        shopType: CONSTANTS.BICYCLE,
        shopAddress: "23 Roushdy Basha, Asahah, Abdeen, Cairo"),
    Shop(
        id: 'bicycle4',
        shopName: "3agalty",
        shopRating: 3.1,
        shopImageUrl: './assets/bicycles/_3agalty.jpg',
        shopType: CONSTANTS.BICYCLE,
        shopAddress: "Al Manteqah assadesah, Nasr City, Cairo"),
  ];
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
