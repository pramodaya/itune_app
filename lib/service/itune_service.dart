import 'package:itune_app/model/itune_model.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;

class ItuneService {
  Future<List<ItuneModel>> getSongs() async {
    String url = "https://itunes.apple.com/us/rss/topalbums/limit=100/json";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print(json);
      final listResult = json['feed']['entry']
          .map<ItuneModel>((e) => ItuneModel.fromJson(e))
          .toList();
      return listResult;
    } else {
      throw Exception("Error fetching data");
    }
  }
}
