import 'package:af/components/Drawer.dart';
import 'package:af/components/Product.dart';
import 'package:af/models/Shop.dart';
import 'package:af/models/partFilter.dart';
import 'package:af/providers/PartsProvider.dart';
import 'package:af/providers/ProductsProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatelessWidget {
  bool firstRender = true;
  ShopScreen({Key? key}) : super(key: key) {
    firstRender = true;
  }
  static final routeName = "shop-screen";

  @override
  Widget build(BuildContext context) {
    final params =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final Shop paramsShop = params['shop'] as Shop;
    final products = Provider.of<ProductProvider>(context)
        .filterByShopID(shopId: paramsShop.id);
    //add filtering functionally to this page
    //add the address of the shop
    // enable editing of the rank of the shop
    final Set<String> types = {};
    products.forEach((element) {
      types.addAll(element.productTags);
    });
    final shopsTypes = types.map((e) => PartFilter(filterType: e)).toList();
    final filterer = Provider.of<Filters>(context);
    if (firstRender) {
      filterer.currentFilters = shopsTypes;
    }
    firstRender = false;
    final allowedParts = filterer.getAllowedParts();
    return Scaffold(
      appBar: AppBar(
        title: Text(paramsShop.shopName),
      ),
      drawer: ANDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var show = false;
          for (var i = 0; i < allowedParts.length; i++) {
            var res = products[index].productTags.firstWhere(
                (element) => element.compareTo(allowedParts[i]) == 0,
                orElse: () => '-1');
            if (res.compareTo('-1') != 0) {
              show = true;
            }
          }
          return show
              ? Product(
                  product: products[index],
                )
              : Container();
        },
        itemCount: products.length,
      ),
    );
  }
}
