import 'package:dio/dio.dart';
import 'dart:convert';

const _Cookle_Prefix = "http://localhost:8080/auto/cook?query=ㅇ";

class Server {
 Future<void> getReq() async {
   Response<Map> response;
   Dio dio = new Dio();
   response = await dio.get("$_Cookle_Prefix");
   Map responseBody = response.data;
   List<dynamic> list = responseBody["data"]["esautocook"];
   list.forEach((element) {
     print(element["keyword"]);
   });
 }
}

Server server = Server();