import 'package:blacsample/models/product.dart';

class ProductService{

  //Sİngleton design pattern

  ProductService._internal();

  static List<Product> products = new List<Product>();

  static ProductService _singleton = ProductService._internal();

  factory ProductService(){
    return _singleton;
  }

  static List<Product> getAll(){
    products.add(new Product(1, "Acer Laptop", 6000));
    products.add(new Product(2, "Macos", 20000));
    products.add(new Product(3, "Asus tablet", 1500));
    return products;
  }
}