import 'dart:async';

import 'package:blacsample/data/product_service.dart';
import 'package:blacsample/models/product.dart';

class ProductBloc{

  final productStreamController = StreamController.broadcast();

  Stream get getProduct => productStreamController.stream;

  List<Product> getAll(){
    return ProductService.getAll();
  }
}

final productBloc = ProductBloc();