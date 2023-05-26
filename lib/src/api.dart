import 'dart:convert';

import 'models/Geolocation_data.dart';
import 'package:http/http.dart' as http;

class GeolocationApi {
  static Future<Geolocation?> getData({String query = ""}) async {
    try {
      final response =
          await http.get(Uri.parse('http://ip-api.com/json/$query'));
      if (response.statusCode == 200) {
        final parsed = jsonDecode(response.body);
        return Geolocation.fromJson(parsed);
      }
      print("geolocation api${response.body}");
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
