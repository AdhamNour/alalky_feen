import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);
  static final routeName = "shop-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is the title bar'),
      ),
      body: Center(child: Text('this is the body')),
    );
  }
}
