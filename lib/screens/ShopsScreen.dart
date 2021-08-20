import 'package:af/components/Shop.dart';
import 'package:flutter/material.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen({Key? key}) : super(key: key);
  static final String routeName = "Shops";

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> params =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final shops = [
      {'rating': 4}
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(params['type'].toString()),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Shop(),
        itemCount: 10,
      ),
    );
  }
}
