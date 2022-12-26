import 'package:counter_7/model/mywatchlist.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<List<MyWatchList>> fetchWatchlist() async {
      var url = Uri.parse('https://raw.githubusercontent.com/dapulmh/Tugas2-repo/main/mywatchlist/fixtures/initial_mywatchlist_data.json');
      var response = await http.get(
      url,
      headers: {
          "Access-Control-Allow-Origin": "*",
          "Content-Type": "application/json",
      },
      );

      var data = jsonDecode(utf8.decode(response.bodyBytes));

      // melakukan konversi data json menjadi object MyWatchlist
      List<MyWatchList> list = [];
      for (var d in data) {
      if (d != null) {
          list.add(MyWatchList.fromJson(d));
      }
      }

      return list;
  }
