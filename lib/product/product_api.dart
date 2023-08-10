import 'package:dio/dio.dart';
import 'package:interview/model/product.dart';

class ProductApi {
  final _http = Dio();

  Future<List<Product>> getProducts() async {
    final result = await _http.get(
      'https://dummyjson.com/products/search?q=phone',
    );
    List<Product> list = [];
    final List rowData = result.data['products'];
    for (Map<String, dynamic> r in rowData) {
      list.add(Product.fromMap(r));
    }
    return list;
  }
}
