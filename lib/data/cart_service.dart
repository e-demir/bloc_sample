import 'package:blacsample/models/cart.dart';

class CartService{

  static List<Cart> cartItems = new List<Cart>();

  static CartService _singleton = new CartService._internal();

  CartService._internal();

  factory CartService(){
    return _singleton;
  }

  static void addToCart(Cart item){
    cartItems.add(item);
  }

  static void removeFromCart(Cart item){
    cartItems.remove(item);
  }

  static List<Cart> getCart(){
    return cartItems;
  }
}