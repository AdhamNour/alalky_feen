import 'package:af/components/Drawer.dart';
import 'package:af/components/Shop.dart';
import 'package:af/constants/Constants.dart';
import 'package:af/models/Shop.dart' as ShopModel;
import 'package:af/models/partFilter.dart';
import 'package:af/providers/PartsProvider.dart';
import 'package:af/providers/ProductsProvider.dart';
import 'package:af/providers/ShopsProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopsScreen extends StatelessWidget {
  bool firstRender = true;
  ShopsScreen({Key? key}) : super(key: key);
  static final String routeName = "Shops";

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> params =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final shops = Provider.of<ShopsProvider>(context)
        .getShopsByType(params['type'].toString())
          ..sort((a, b) => b.shopRating.compareTo(a.shopRating));
    final products = Provider.of<ProductProvider>(context).products;
    final filters = Provider.of<Filters>(context);
    final Set<String> types = {};
    products.forEach((element) {
      types.addAll(element.productTags);
    });
    final shopsTypes = types.map((e) => PartFilter(filterType: e)).toList();
    if (firstRender) {
      Future.delayed(Duration.zero)
          .then((value) => filters.currentFilters = shopsTypes);
    }
    firstRender = false;
    final allowedParts = filters.getAllowedParts();
    final ids = products.map((e) {
      bool allowed = false;
      for (var i = 0; i < allowedParts.length; i++) {
        for (var j = 0; j < e.productTags.length; j++) {
          if (e.productTags.elementAt(j).compareTo(allowedParts[i]) == 0) {
            allowed = true;
          }
        }
        if (allowed) break;
      }
      if (allowed) {
        return e.ownerID;
      }
    }).toList();

    final allowedShops = [];
    shops.forEach((e) {
      if (ids.indexOf(e.id) != -1) {
        allowedShops.add(e.id);
      }
    });
    print(allowedShops);

    return Scaffold(
      appBar: AppBar(
        title: Text(params['type'].toString()),
      ),
      drawer: ANDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (allowedShops.contains(shops[index].id))
            return Shop(shop: shops[index]);
          else
            return Container();
        },
        itemCount: shops.length,
      ),
    );
  }
}
