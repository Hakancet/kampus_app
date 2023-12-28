import 'package:http/http.dart' as http;
import 'package:kampusapp/Ogrenci/Burs/bursArticles.dart';
import 'dart:convert';

class BursService {
  static final BursService _singleton = BursService._iternal();
  BursService._iternal();


  factory BursService(){
    return _singleton;
  }

  static Future<List<burs>?> getBurs() async {
    final url = Uri.parse('http://10.0.2.2:8000/api/Burs');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> responseJson = json.decode(response.body);
      List<burs> newsList = responseJson.map((json) => burs.fromJson(json)).toList();
      return newsList;
    } else {
      throw Exception('Bilgiler Yüklenmedi');
    }
  }
}