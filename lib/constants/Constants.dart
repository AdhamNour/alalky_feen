import 'dart:math';

import 'package:af/models/Product.dart';
import 'package:af/models/Shop.dart';
import 'package:af/models/partFilter.dart';
import 'package:faker/faker.dart';

class CONSTANTS {
  static String CARS = 'Cars';
  static String MOTORCYCLE = 'Motrocycles';
  static String BICYCLE = 'Bicycles';
  static Map<String, List<PartFilter>> FILTERS = {
    //remove this and fill it from the product data in the shop screen
    
    "Cars": [
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
      PartFilter(filterType: 'some another Wierd stuff'),
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
      PartFilter(filterType: 'some another Wierd stuff'),
    ],
    "Motrocycles": [
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
      PartFilter(filterType: 'some another Wierd stuff'),
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
    ],
    "Bicycles": [
      PartFilter(filterType: 'wheels'),
      PartFilter(filterType: 'another Wierd stuff'),
      PartFilter(filterType: 'some another Wierd stuff'),
      PartFilter(filterType: 'wheels'),
    ]
  };


  static List<Product> generateProducts() {
    List<Product> Products = [];

    for (var i = 0; i < 1500; i++) {
      var product = Product(
          productID: i.toString(),
          productName: faker.conference.name(),
          productPrice: (new Random()).nextDouble() * 300,
          productTags: {'Anime', "waifu"},
          productImgUrl: faker.image.image(),
          ownerID: ((new Random()).nextInt(150)).toString());
      Products.add(product);
    }
    return Products;
  }
}
