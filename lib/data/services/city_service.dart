
import 'dart:convert';

import 'package:weather_all/data/services/weather_service.dart';
import 'package:http/http.dart' as http;

import '../models/city_model.dart';
Future<CityModel?> fetchCity(String cityName) async{
  if(cityJSON==null){
    String link = "https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/cities.json";
    var response = await http.get(Uri.parse(link));
    if(response.statusCode==200){
      cityJSON = json.decode(response.body);
    }
  }
  for(var i=0;i<cityJSON.length;i++){
    if(cityJSON[i]["name"].toString().toLowerCase() == cityName.toLowerCase()){
      return CityModel(
        name:cityJSON[i]["name"].toString(),
        lat: cityJSON[i]["latitude"].toString(),
        lon: cityJSON[i]["longitude"].toString()
      );
    }
  }
  return null;
}