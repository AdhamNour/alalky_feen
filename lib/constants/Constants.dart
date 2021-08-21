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
  static List<Shop> generateShops() {
    List<Shop> shops = [];
    var types = [CARS, MOTORCYCLE, BICYCLE];
    var imgUrls = [
      'https://images8.alphacoders.com/692/thumb-1920-692914.jpg',
      'https://images5.alphacoders.com/903/903849.jpg',
      'https://images2.alphacoders.com/809/809374.jpg',
      'https://images3.alphacoders.com/769/769165.jpg'
    ];
    for (var i = 0; i < 150; i++) {
      shops.add(Shop(
          id: i.toString(),
          shopName: faker.company.name(),
          shopRating: (new Random().nextDouble()) * 5,
          shopImageUrl: imgUrls[i % imgUrls.length],
          shopType: types[i % types.length]));
    }
    return shops;
  }

  static List<Product> generateProducts() {
    List<Product> Products = [];

    for (var i = 0; i < 1500; i++) {
      Products.add(Product(
          productID: i.toString(),
          productName: faker.conference.name(),
          productPrice: (new Random()).nextDouble() * 300,
          productTags: {'Anime', "waifu"},
          productImgUrl: faker.image.image(),
          ownerID: ((new Random()).nextInt(150)).toString()));
    }
    return Products;
  }
}
