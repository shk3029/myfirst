import 'package:dio/dio.dart';

const _Cookle_Auto_Prefix = "http://localhost:8080/auto/cook?query=ㅇ";
const _Cookle_Search_Prefix = "http://localhost:8080/search/cook?query=양파,소금";

class Server {

  Future<void> getReq() async {
    Response<Map> response;
    Dio dio = new Dio();
    response = await dio.get("$_Cookle_Auto_Prefix");
    Map responseBody = response.data;
    List<dynamic> list = responseBody["data"]["esautocook"];
    list.forEach((element) {
      print(element["keyword"]);
    });
  }

  Future<void> getSearchReq() async {
    Response<Map> response;
    Dio dio = new Dio();
    response = await dio.get("$_Cookle_Search_Prefix");
    Map responseBody = response.data;
    List<dynamic> list = responseBody["data"]["essearchcook"];
    list.forEach((element) {
      print(element["title"]);
      print(element["cookTime"]);
    });
  }
}

Server server = Server();