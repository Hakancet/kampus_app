import 'package:http/http.dart' as http;
import 'package:kampusapp/Ogrenci/Staj/StajArticles.dart';
import 'dart:convert';


class StajService {
  static final StajService _singleton = StajService._iternal();
  StajService._iternal();


  factory StajService(){
    return _singleton;
  }

  static Future<List<Staj>?> getStaj() async {
    final url = Uri.parse('http://10.0.2.2:8000/api/Staj');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> responseJson = json.decode(response.body);
      List<Staj> newsList = responseJson.map((json) => Staj.fromJson(json)).toList();
      return newsList;
    } else {
      throw Exception('Bilgiler Yüklenmedi');
    }
  }
}