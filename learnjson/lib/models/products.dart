import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:learnjson/models/product.dart' as product;

Future<List<product.Product>> loadProducts() async {
  final String jsonString =
      await rootBundle.loadString('lib/assets/data/product.json');
  final List<dynamic> jsonList = jsonDecode(jsonString);
  return jsonList.map((item) => product.Product.fromjson(item)).toList();
}
