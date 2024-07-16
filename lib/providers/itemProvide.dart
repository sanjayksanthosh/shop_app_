import 'package:flutter/material.dart';

class Itemprovide extends ChangeNotifier {
  var products;

  getitems(var items) {
    products = items;
    notifyListeners();
  }
}
