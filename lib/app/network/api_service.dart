
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:makeup_kit/app/data/ResponseProduct.dart';

class ApiService{
  static var client;
  ApiService(){
    client =  http.Client();
  }
  Future<List<ResponseProduct>?> fetchProducts() async{

    try{
      print("called");
      const url = "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";
      final uri = Uri.parse(url);
      http.Response response = await client.get(uri);

      if(response.statusCode ==200){
        var jsonString = json.decode(response.body);
        List<ResponseProduct> listProduct = [];
        jsonString.forEach((v) {
          try{
            listProduct.add(ResponseProduct.fromJson(v));
          }catch(e){
            print(e.toString());
          }
        }
        );
        return listProduct;

      }
    }catch(e){
      print(e.toString());
    }
    return null;

   }
}