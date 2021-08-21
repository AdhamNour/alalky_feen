import 'package:af/components/Drawer.dart';
import 'package:af/components/Shop.dart';
import 'package:af/constants/FilterConstants.dart';
import 'package:af/models/Shop.dart' as ShopModel;
import 'package:af/models/partFilter.dart';
import 'package:af/providers/ShopsProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen({Key? key}) : super(key: key);
  static final String routeName = "Shops";

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> params =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final shops = Provider.of<ShopsProvider>(context)
        .getShopsByType(params['type'].toString());

    return Scaffold(
      appBar: AppBar(
        title: Text(params['type'].toString()),
      ),
      drawer: ANDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) => Shop(shop: shops[index]),
        itemCount: shops.length,
      ),
    );
  }
}
