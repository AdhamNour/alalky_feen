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
        priceStatus: "HIGH",
    Shop(
        id: 'bicycle2',
        shopName: "Crazy Bike",
        shopRating: 3.5,
        shopImageUrl: './assets/bicycles/crazy_bike.jpg',
        shopType: CONSTANTS.BICYCLE,
        shopAddress: "Roushdy Basha, Asahah, Abdeen, Cairo"),
        priceStatus: "MEDIUM",
    Shop(
        id: 'bicycle3',
        shopName: "Trinx",
        shopRating: 3.1,
        shopImageUrl: './assets/bicycles/trinx.jpg',
        shopType: CONSTANTS.BICYCLE,
        shopAddress: "23 Roushdy Basha, Asahah, Abdeen, Cairo"),
        priceStatus: "HIGH",
    Shop(
        id: 'bicycle4',
        shopName: "3agalty",
        shopRating: 3.1,
        shopImageUrl: './assets/bicycles/_3agalty.jpg',
        shopType: CONSTANTS.BICYCLE,
        shopAddress: "Al Manteqah assadesah, Nasr City, Cairo"),
        priceStatus: "LOW",
    Shop(
        id: 'motorcycle1',
        shopName: "abo sha3ban",
        shopRating: 3.1,
        shopImageUrl: './assets/motorcycles/abo_shaaban.jpg',
        shopType: CONSTANTS.MOTORCYCLE,
        shopAddress: "1 bolak el gedid st,Cairo",
        priceStatus: "HIGH",
        ),

    Shop(
        id: 'motorcycle2',
        shopName: "abo 7elmy",
        shopRating: 4.2,
        shopImageUrl: "./assets/motorcycles/abo_helmy.jpg",
        shopType: CONSTANTS.MOTORCYCLE,
        shopAddress: "Nahia, Boulaq Ad Dakrour, Giza",
        priceStatus: "MEDIUM",
        ),

    Shop(
        id: 'motorcycle3',
        shopName: "ZOGMAR",
        shopRating: 3.3,
        shopImageUrl: "./assets/motorcycles/Zogmar.jpg",
        shopType: CONSTANTS.MOTORCYCLE,
        shopAddress: "Nulaq, Cairo",
        priceStatus: "HIGH",
        ),

    Shop(
        id: 'motorcycle4',
        shopName: "Abou 7awaa",
        shopRating: 2.5,
        shopImageUrl: "./assets/motorcycles/abo_eve.jpg",
        shopType: CONSTANTS.MOTORCYCLE,
        shopAddress: "6 El-Ansary st, El-Shaikh Farrag, Bulaq, Cairo",
        priceStatus: "LOW",
        ),
    Shop(
        id: 'motorcycle5',
        shopName: "Dede",
        shopRating: 4.5,
        shopImageUrl: "./assets/motorcycles/dede.jpg",
        shopType: CONSTANTS.MOTORCYCLE,
        shopAddress: "2 Wabour Al Faransawi, Boulaq, No.3, Boulaq, Cairo",
        priceStatus: "MEDIUM",
        ),
    Shop(
        id: 'motorcycle6',
        shopName: "Abo Wadda",
        shopRating: 3.5,
        shopImageUrl: "./assets/motorcycles/abo_wada.jpg",
        shopType: CONSTANTS.MOTORCYCLE,
        shopAddress: "2 kafr Tahrmus, Kism Boulaq Al Dakrour, Giza",
        priceStatus: "LOW",
        ),
    Shop(
        id: 'car1',
        shopName: "Banorama el tawfekeya",
        shopRating: 4.5,
        shopImageUrl: "./assets/cars/tawfe2ya.jpg",
        shopType: CONSTANTS.CARS,
        shopAddress: "Soul Al Tawfik, Oraby, Al Azbakeya, Cairo",
        priceStatus: "HIGH",
        ),
    Shop(
        id: 'car2',
        shopName: "Ebrahiem El bana",
        shopRating: 3.5,
        shopImageUrl: "./assets/cars/el_bana.jpg",
        shopType: CONSTANTS.CARS,
        shopAddress: "5 zaky st, Downtown, Al Azbakeya, Cairo",
        priceStatus: "LOW",
        ),
    Shop(
        id: 'car3',
        shopName: "Al Dakak",
        shopRating: 3.5,
        shopImageUrl: "./assets/cars/el_dakak.jpg",
        shopType: CONSTANTS.CARS,
        shopAddress: "Wasat Al Balad, 5 Zaki st, Al Azbakeya, Cairo",
        priceStatus: "MEDIUM",
        ),
    Shop(
        id: 'car4',
        shopName: "Al Fady",
        shopRating: 4,
        shopImageUrl: "./assets/cars/al_fady.jpg",
        shopType: CONSTANTS.CARS,
        shopAddress: "Soliman El-Halaby, 1 Oraby st, Al Azbakeya, Cairo",
        priceStatus: "LOW",
        ),
    Shop(
        id: 'car5',
        shopName: "Banorama el tawfekeya",
        shopRating: 5,
        shopImageUrl: "./assets/motorcycles/abo_wada.jpg",
        shopType: CONSTANTS.CARS,
        shopAddress: "Soul Al Tawfik, Oraby, Al Azbakeya, Cairo",
        priceStatus: "HIGH",
        ),
    Shop(
        id: 'car6',
        shopName: "Al Sawy",
        shopRating: 2.5,
        shopImageUrl: "./assets/cars/al_sawy.jpg",
        shopType: CONSTANTS.CARS,
        shopAddress: "9 Sayed Anbar, Oraby, Al Azbakeya, Cairo",
        priceStatus: "MEDIUM",
        )
  ];
  void set shops(List<Shop> shops) 
  {
    _shops = [...shops];
  }

  List<Shop> get shops 
  {
    return [..._shops];
  }

  List<Shop> getShopsByType(String targetShopType) 
  {
    return _shops
        .where((element) => element.shopType == targetShopType)
        .toList();
  }

  Shop getShopByID({required String targetShopID}) {
    return _shops.firstWhere((element) => element.id == targetShopID);
  }
}
