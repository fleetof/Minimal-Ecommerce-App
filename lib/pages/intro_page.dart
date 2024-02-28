import 'package:flutter/material.dart';
import 'package:koko_ecommerce/components/my_button.dart';

class IntroPage extends StatelessWidget {
  // const IntroPage({Key? key}) : super(key: key);
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center, // 没办法让元素在页面居中，因为Column水平宽度不够
            children: [
              // logo
              Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 24),

              // title
              const Text(
                "Minial Shop",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              const SizedBox(height: 6),

              // subtitle
              Text(
                "Premium Quality Products",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),

              const SizedBox(height: 25),

              // button
              MyButton(
                  onTap: () => {
                        Navigator.pushNamed(context, '/shop_page'), // Navigator.push()方法的替代方法
                      },
                  child: const Icon(Icons.arrow_forward)),
            ]),
      ),
    );
  }
}
