import 'package:flutter/material.dart';
import 'package:koko_ecommerce/components/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 设置菜单栏颜色
        backgroundColor: Colors.transparent, // 代码解释：设置AppBar的背景颜色为透明
        elevation: 0, // 代码解释：设置AppBar的阴影为0
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: const Text("Shop Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const MyDrawer(),
      body: Column(
        children: [
          // products for sale

        ],
      ),
    );
  }
}
