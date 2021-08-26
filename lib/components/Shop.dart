import 'package:af/screens/ShopScreen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:math';
import 'package:af/models/Shop.dart' as ShopModel;

class Shop extends StatelessWidget {
  final ShopModel.Shop shop;
  const Shop({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 6,
        child: Container(
            height: 250,
            child: GridTile(
              footer: Container(
                child: Row(
                  children: [
                    RatingBarIndicator(
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Theme.of(context).primaryColor,
                      ),
                      rating: shop.shopRating,
                      itemSize: 25,
                      unratedColor:
                          Theme.of(context).primaryColor.withAlpha(64),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                color: Colors.black38,
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
              ),
              child: Center(
                child: GestureDetector(
                  child: Image.asset(shop.shopImageUrl),
                  onTap: () {
                    Navigator.of(context).pushNamed(ShopScreen.routeName,
                        arguments: {'shop': shop});
                  },
                ),
              ),
              header: Container(
                child: Center(
                  child: Text(shop.shopName),
                ),
                color: Colors.blue[200]!.withOpacity(0.85),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
            )),
      ),
    );
  }
}
