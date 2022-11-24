import 'package:counter_7/model/mywatchlist.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<List<MyWatchList>> fetchWatchlist() async {
      var url = Uri.parse('https://tugas2app.herokuapp.com/mywatchlist/json/');
      var response = await http.get(
      url,
      headers: {
          "Access-Control-Allow-Origin": "*",
          "Content-Type": "application/json",
      },
      );

      var data = jsonDecode(utf8.decode(response.bodyBytes));

      // melakukan konversi data json menjadi object ToDo
      List<MyWatchList> list = [];
      for (var d in data) {
      if (d != null) {
          list.add(MyWatchList.fromJson(d));
      }
      }

      return list;
  }
