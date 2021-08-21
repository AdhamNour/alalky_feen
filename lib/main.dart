import 'package:af/providers/PartsProvider.dart';
import 'package:af/providers/ProductsProvider.dart';
import 'package:af/providers/ShopsProvider.dart';
import 'package:af/screens/HomeScreen.dart';
import 'package:af/screens/ShopScreen.dart';
import 'package:af/screens/ShopsScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Filters(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ShopsProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Asal Tlaky',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: HomeScreen(),
        routes: {
          ShopsScreen.routeName: (ctx) => ShopsScreen(),
          ShopScreen.routeName: (ctx) => ShopScreen(),
        },
      ),
    );
  }
}
