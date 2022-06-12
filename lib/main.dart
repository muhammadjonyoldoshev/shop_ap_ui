import 'package:flutter/material.dart';
import 'package:shop_ap_ui/pages/home_page.dart';
import 'package:shop_ap_ui/pages/shop_app.dart';

void main() {
  runApp(const AppleShopApp());
}

class AppleShopApp extends StatelessWidget {
  const AppleShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        ShopApp.id: (context) => const ShopApp(),
      },
    );
  }
}


