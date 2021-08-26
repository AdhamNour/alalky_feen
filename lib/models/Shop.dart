import 'dart:convert';

class Shop {
  final String id;
  final String shopName;
  final double shopRating;
  final String shopImageUrl;
  final String shopType;
  final String shopAddress;
  final String priceStatus;
  Shop({
    required this.id,
    required this.shopName,
    required this.shopRating,
    required this.shopImageUrl,
    required this.shopType,
    required this.shopAddress,
    required this.priceStatus,
  });

  Shop copyWith({
    String? id,
    String? shopName,
    double? shopRating,
    String? shopImageUrl,
    String? shopType,
    String? shopAddress,
    String? priceStatus,
  }) {
    return Shop(
      id: id ?? this.id,
      shopName: shopName ?? this.shopName,
      shopRating: shopRating ?? this.shopRating,
      shopImageUrl: shopImageUrl ?? this.shopImageUrl,
      shopType: shopType ?? this.shopType,
      shopAddress: shopAddress ?? this.shopAddress,
      priceStatus: priceStatus ?? this.priceStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'shopName': shopName,
      'shopRating': shopRating,
      'shopImageUrl': shopImageUrl,
      'shopType': shopType,
      'shopAddress': shopAddress,
      'priceStatus':priceStatus,
    };
  }

  factory Shop.fromMap(Map<String, dynamic> map) {
    return Shop(
      id: map['id'],
      shopName: map['shopName'],
      shopRating: map['shopRating'],
      shopImageUrl: map['shopImageUrl'],
      shopType: map['shopType'],
      shopAddress: map['shopAddress'],
      priceStatus: map['priceStatus']
    );
  }

  String toJson() => json.encode(toMap());

  factory Shop.fromJson(String source) => Shop.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Shop(id: $id, shopName: $shopName, shopRating: $shopRating, shopImageUrl: $shopImageUrl, shopType: $shopType, shopAddress: $shopAddress, priceStatus: $priceStatus)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Shop &&
      other.id == id &&
      other.shopName == shopName &&
      other.shopRating == shopRating &&
      other.shopImageUrl == shopImageUrl &&
      other.shopType == shopType &&
      other.shopAddress == shopAddress &&
      other.priceStatus == priceStatus;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      shopName.hashCode ^
      shopRating.hashCode ^
      shopImageUrl.hashCode ^
      shopType.hashCode ^
      shopAddress.hashCode ^
      priceStatus.hashCode;
  }
}
