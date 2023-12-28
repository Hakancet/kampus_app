import 'package:http/http.dart' as http;
import 'package:kampusapp/Kampus/KampusApi/KampusArticles.dart';
import 'dart:convert';




class KampusService {
  static final KampusService _singleton = KampusService._iternal();
  KampusService._iternal();


  factory KampusService(){
    return _singleton;
  }

  static Future<List<Etkinlik>?> getEtkinlik() async {
    final url = Uri.parse('http://10.0.2.2:8000/api/Etkinlik');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> responseJson = json.decode(response.body);
      List<Etkinlik> newsList = responseJson.map((json) => Etkinlik.fromJson(json)).toList();
      return newsList;
    } else {
      throw Exception('Bilgiler Yüklenmedi');
    }
  }
}