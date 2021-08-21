import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:math';
class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

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
                      rating: (new Random()).nextDouble()*5 ,
                      itemSize: 25,
                      unratedColor:
                          Theme.of(context).primaryColor.withAlpha(64),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).primaryColor,
                        ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                color: Colors.black38,
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
              ),
              child: Center(
                child: GestureDetector(
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://images.unsplash.com/photo-1558259299-5d46c4408730?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1291&q=80',
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                                value: downloadProgress.progress),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover)),
                    ),
                  ),
                  onTap: () {
                    print('object');
                  },
                ),
              ),
              header: Container(
                child: Center(
                  child: Text("data"),
                ),
                color: Colors.blue[200]!.withOpacity(0.85),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
            )),
      ),
    );
  }
}
