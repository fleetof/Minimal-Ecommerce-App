import 'package:flutter/material.dart';
import 'package:koko_ecommerce/pages/cart_page.dart';
import 'package:koko_ecommerce/pages/intro_page.dart';
import 'package:koko_ecommerce/pages/shop_page.dart';
import 'package:koko_ecommerce/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode, // 代码解释：设置主题为lightMode。
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        "/intro_page": (context) => const IntroPage(), // 不能指定为/，否则会报错，因为跟home属性重复
        "/shop_page": (context) => const ShopPage(),
        "/cart_page": (context) => const CartPage(),
      },
    );
  }
}
