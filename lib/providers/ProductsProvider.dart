import 'package:af/constants/Constants.dart';
import 'package:af/models/Product.dart';
import 'package:flutter/widgets.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    Product(
        productID: '1',
        productName: 'battary',
        productPrice: 160.99,
        productTags: {'battary','car'},
        productImgUrl:
            'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'car1'),
    Product(
        productID: '2',
        productName: 'battary',
        productPrice: 150.5,
        productTags: {'battary','car'},
        productImgUrl:
            'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'car2'),
    Product(
        productID: '3',
        productName: 'mesba7 5alfi',
        productPrice: 95.68,
        productTags: {'mesba7 5alfi','car'},
        productImgUrl:'https://thumbs.dreamstime.com/b/led-turn-signal-rear-brake-light-car-modern-lantern-close-up-223472627.jpg',
        ownerID: 'car1'),

    Product(
        productID: '4',
        productName: 'mesba7 amami',
        productPrice: 70.5,
        productTags: {'mesba7 amami','car'},
        productImgUrl:'https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png',
        ownerID: 'car4'),
    Product(
        productID: '5',
        productName: 'battary',
        productPrice: 150.5,
        productTags: {'battary','car'},
        productImgUrl:
            'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'car6'),
    Product(
        productID: '6',
        productName: 'side mirror',
        productPrice: 30.5,
        productTags: {'side mirror','car'},
        productImgUrl:'https://img.favpng.com/25/0/16/rear-view-mirror-car-wing-mirror-png-favpng-FWsGWA6YSTdgm09gYJcD6kWx7.jpg',
        ownerID: 'car6'),
    Product(
        productID: '7',
        productName: 'battary',
        productPrice: 130.5,
        productTags: {'battary','motorcycle'},
        productImgUrl:'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'motorcycle1'),
    Product(
        productID: '8',
        productName: 'battary',
        productPrice: 130.5,
        productTags: {'battary','motorcycle'},
        productImgUrl:'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'motorcycle2'),
    Product(
        productID: '9',
        productName: 'battary',
        productPrice: 130.5,
        productTags: {'battary','motorcycle'},
        productImgUrl:'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'motorcycle3'),
    Product(
        productID: '10',
        productName: 'side mirror',
        productPrice: 25.5,
        productTags: {'side mirror','car'},
        productImgUrl:'https://img.favpng.com/25/0/16/rear-view-mirror-car-wing-mirror-png-favpng-FWsGWA6YSTdgm09gYJcD6kWx7.jpg',
        ownerID: 'motorcycle2'),
    Product(
        productID: '11',
        productName: 'mesba7 5alfi',
        productPrice: 95.68,
        productTags: {'mesba7 5alfi','motorcycle'},
        productImgUrl:'https://thumbs.dreamstime.com/b/led-turn-signal-rear-brake-light-car-modern-lantern-close-up-223472627.jpg',
        ownerID: 'motorcycle4'),
    Product(
        productID: '12',
        productName: 'battary',
        productPrice: 110.5,
        productTags: {'battary','motorcycle'},
        productImgUrl:'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'motorcycle4'),
    Product(
        productID: '13',
        productName: 'battary',
        productPrice: 134.5,
        productTags: {'battary','motorcycle'},
        productImgUrl:'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'motorcycle6'),
    Product(
        productID: '14',
        productName: 'battary',
        productPrice: 165,
        productTags: {'battary','motorcycle'},
        productImgUrl:'https://www.omniaracing.net/images/products/garage-e-box-moto/batterie/BCBattery_BCTX5L-FP-Sl.jpg',
        ownerID: 'motorcycle5'),
    Product(
        productID: '15',
        productName: 'side mirror',
        productPrice: 28.5,
        productTags: {'side mirror','car'},
        productImgUrl:'https://img.favpng.com/25/0/16/rear-view-mirror-car-wing-mirror-png-favpng-FWsGWA6YSTdgm09gYJcD6kWx7.jpg',
        ownerID: 'motorcycle6'),
    Product(
        productID: '16',
        productName: 'Crank',
        productPrice: 39.5,
        productTags: {'side mirror','bicycle'},
        productImgUrl:'https://electricbikereview.com/forums/attachments/20200924_153534-jpg.66961',
        ownerID: 'bicycle1'),
    Product(
        productID: '17',
        productName: 'Crank',
        productPrice: 35,
        productTags: {'Crank','bicycle'},
        productImgUrl:'https://electricbikereview.com/forums/attachments/20200924_153534-jpg.66961',
        ownerID: 'bicycle6'),
    Product(
        productID: '18',
        productName: 'Crank',
        productPrice: 45.5,
        productTags: {'Crank','bicycle'},
        productImgUrl:'https://electricbikereview.com/forums/attachments/20200924_153534-jpg.66961',
        ownerID: 'bicycle3'),
    Product(
        productID: '18',
        productName: 'Crank',
        productPrice: 45.5,
        productTags: {'Crank','bicycle'},
        productImgUrl:'https://electricbikereview.com/forums/attachments/20200924_153534-jpg.66961',
        ownerID: 'bicycle4'),
    Product(
        productID: '19',
        productName: 'Paddle',
        productPrice: 45.5,
        productTags: {'Paddle','bicycle'},
        productImgUrl:'https://www.shutterstock.com/image-illustration/bicycle-chain-pedals-front-view-isolated-263357870',
        ownerID: 'bicycle2'),
    Product(
        productID: '20',
        productName: 'Paddle',
        productPrice: 45.5,
        productTags: {'Paddle','bicycle'},
        productImgUrl:'https://www.shutterstock.com/image-illustration/bicycle-chain-pedals-front-view-isolated-263357870',
        ownerID: 'bicycle5'),
    Product(
        productID: '21',
        productName: 'Paddle',
        productPrice: 45.5,
        productTags: {'Paddle','bicycle'},
        productImgUrl:'https://www.shutterstock.com/image-illustration/bicycle-chain-pedals-front-view-isolated-263357870',
        ownerID: 'bicycle6'),
    Product(
        productID: '22',
        productName: 'kawetsh',
        productPrice: 60.5,
        productTags: {'kawetsh','bicycle'},
        productImgUrl:'http://www.clipartbest.com/cliparts/aTq/Kob/aTqKobnTM.jpeg',
        ownerID: 'bicycle4'),
  ];
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
