import 'package:http/http.dart' as http;
import 'package:kampusapp/Ogrenci/Api/IsyeriArticle.dart';
import 'dart:convert';




class LocalService {
  static final LocalService _singleton = LocalService._iternal();
  LocalService._iternal();


  factory LocalService(){
    return _singleton;
  }

  static Future<List<Local>?> getLocal() async {
    final url = Uri.parse('http://10.0.2.2:8000/api/Isyeri');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> responseJson = json.decode(response.body);
      List<Local> newsList = responseJson.map((json) => Local.fromJson(json)).toList();
      return newsList;
    } else {
      throw Exception('Bilgiler Yüklenmedi');
    }
  }
}