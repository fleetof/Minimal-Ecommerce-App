import 'package:koko_ecommerce/models/product.dart';

class Shop {
  //  products for sale
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      description: "This is a product",
      price: 100,
      // imagePath: "assets/images/product1.jpg",
    ),
    Product(
      name: "Product 2",
      description: "This is a product",
      price: 200,
      // imagePath: "assets/images/product2.jpg",
    ),
    Product(
      name: "Product 3",
      description: "This is a product",
      price: 300,
      // imagePath: "assets/images/product3.jpg",
    ),
    Product(
      name: "Product 4",
      description: "This is a product",
      price: 400,
      // imagePath: "assets/images/product4.jpg",
    ),
  ];

  // user cart
  final List<Product> _cart = [];

  // get product list
  List<Product> get products => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item from cart
  addToCart(Product item) {
    _shop.add(item);
  }

  // remove item from cart
  removeFromCart(Product item) {
    _shop.remove(item);
  }
}
