import 'dart:convert';

import 'package:ctrip_exercise/model/travel_tab_model.dart';
import 'package:http/http.dart' as http;

class TravelTabDao {
  static Future<TravelTabModel> fetch() async{
    final response = await http.get(Uri.parse("https://m.ctrip.com/restapi/soa2/15612/json/getTripShootHomePage"));
    if(response.statusCode ==200){
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      return TravelTabModel.fromJson(result);
    }else{
      throw Exception("Failed to load travel_page.json");
    }
  }
}
