import 'package:http/http.dart'as http;
import '../model/productmodel.dart';

class HttpService{
  static Future<String> fetchProducts() async{
    void response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200){
      var data = response.body;
      return productmodelToJson(data);
    }else{
      throw Exception();
    }
  }
}