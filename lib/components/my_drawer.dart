import "package:flutter/material.dart";
import "package:koko_ecommerce/components/my_list_tile.dart";
import "package:koko_ecommerce/pages/intro_page.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              // shop tile
              MyListTile(
                title: "Shop",
                icon: Icons.shop,
                // onTap: () => {Navigator.pushNamed(context, '/shop_page'),}
                onTap: () => Navigator.pop(context), // 比上面自己的写法更好
              ),

              // cart tile
              MyListTile(
                  title: "Cart",
                  icon: Icons.shopping_cart,
                  onTap: () {
                    // ### need pop drawer first
                    Navigator.pop(context);

                    // then push cart page
                    Navigator.pushNamed(context, '/cart_page');
                  }),
            ],
          ),

          // exit shop tile，把它放到底部
          // const Spacer(),

          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: MyListTile(
                title: "Exit",
                icon: Icons.logout,
                onTap: () =>
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const IntroPage()), ModalRoute.withName('/intro_page'))),
                // Navigator.pushNamed(context, '/intro_page')),
          ),
        ],
      ),
    );
  }
}

/*
Navigator.pushNamed 和 Navigator.pushAndRemoveUntil 是 Flutter 中用于页面导航的两个不同的方法，它们在导航时的行为上有显著的差异。

Navigator.pushNamed 方法：

Navigator.pushNamed 用于将一个新的路由推送到导航器的堆栈上，这个路由是通过一个字符串名称来标识的。
当你调用 Navigator.pushNamed(context, '/intro_page') 时，应用会导航到与字符串 '/intro_page' 相关联的页面，而不会影响导航堆栈中的其他路由。
通常用于简单的页面跳转，不涉及对当前堆栈的修改。
Navigator.pushAndRemoveUntil 方法：

Navigator.pushAndRemoveUntil 用于将一个新的路由推送到导航器的堆栈上，同时删除堆栈上的所有先前路由，直到满足某个条件为止。
第一个参数是 BuildContext，第二个参数是新页面的路由，第三个参数是一个 RoutePredicate（一个返回布尔值的函数），当这个函数对某个路由返回 true 时，这个路由以及它之上的所有路由都会被移除。
例如，Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => IntroPage()), ModalRoute.withName('/intro_page')) 会推送 IntroPage 到导航堆栈，并移除所有之前的路由直到找到名为 '/intro_page' 的路由。
是否可以用第一段代码替代第二段取决于你的需求：

如果你只是想要简单地跳转到一个新页面，并且不需要修改当前的路由堆栈，那么使用 Navigator.pushNamed 就足够了。
如果你需要在跳转到新页面的同时清除掉堆栈中的某些路由（例如，当用户退出登录并且你不希望他们通过返回按钮回到认证前的页面时），那么你应该使用 Navigator.pushAndRemoveUntil。
如果你想要用 Navigator.pushNamed 来替代 Navigator.pushAndRemoveUntil，你需要确保这种替换不会违背你的导航逻辑和用户体验的预期。简单地替换可能会导致应用的导航堆栈中出现不期望的页面。
*/
