import 'package:dio/dio.dart';

class ProductApi {
  final _http = Dio();

  Future<Response<Map<String, dynamic>>> getProducts() async {
    return _http.get(
      'https://dummyjson.com/products/search?q=phone',
    );
  }
}
