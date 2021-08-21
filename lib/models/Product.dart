import 'dart:convert';

import 'package:flutter/foundation.dart';

class Product {
  final String productID;
  final String productName;
  final double productPrice;
  final Set<String> productTags;
  final String productImgUrl;
  final String ownerID;
  Product({
    required this.productID,
    required this.productName,
    required this.productPrice,
    required this.productTags,
    required this.productImgUrl,
    required this.ownerID,
  });
  

  Product copyWith({
    String? productID,
    String? productName,
    double? productPrice,
    Set<String>? productTags,
    String? productImgUrl,
    String? ownerID,
  }) {
    return Product(
      productID: productID ?? this.productID,
      productName: productName ?? this.productName,
      productPrice: productPrice ?? this.productPrice,
      productTags: productTags ?? this.productTags,
      productImgUrl: productImgUrl ?? this.productImgUrl,
      ownerID: ownerID ?? this.ownerID,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productID': productID,
      'productName': productName,
      'productPrice': productPrice,
      'productTags': productTags.toList(),
      'productImgUrl': productImgUrl,
      'ownerID': ownerID,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productID: map['productID'],
      productName: map['productName'],
      productPrice: map['productPrice'],
      productTags: Set<String>.from(map['productTags']),
      productImgUrl: map['productImgUrl'],
      ownerID: map['ownerID'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(productID: $productID, productName: $productName, productPrice: $productPrice, productTags: $productTags, productImgUrl: $productImgUrl, ownerID: $ownerID)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Product &&
      other.productID == productID &&
      other.productName == productName &&
      other.productPrice == productPrice &&
      setEquals(other.productTags, productTags) &&
      other.productImgUrl == productImgUrl &&
      other.ownerID == ownerID;
  }

  @override
  int get hashCode {
    return productID.hashCode ^
      productName.hashCode ^
      productPrice.hashCode ^
      productTags.hashCode ^
      productImgUrl.hashCode ^
      ownerID.hashCode;
  }
}
