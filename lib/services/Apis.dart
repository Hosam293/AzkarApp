import 'dart:convert';
import 'package:azkark/models/AzanModel.dart';
import 'package:http/http.dart'as http;
class Apis
{
 static fetchData()
  async {
   List <AzanModel>lol =[];
    var url = Uri.parse('https://api.aladhan.com/v1/calendar?latitude=51.508515&longitude=-0.1254872&method=2&month=5&year=2022');
    var response = await http.get(url);
    var responseBody=jsonDecode(response.body)["data"];

    for(var i in responseBody){
lol.add(AzanModel.fromJson(i));

    }
    print(lol);

  }
}