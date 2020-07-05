import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import './model/country.dart';

Future<List<Country>> fetchCountry(http.Client client) async{
  final response = await client.get('https://restcountries.eu/rest/v2/all');
  return compute(parseData,response.body);
}

List<Country> parseData(String responseBody){
  final parsed = json.decode(responseBody).cast<Map<String,dynamic>>();
  List<Country> listofcountry = parsed.map<Country>((json)=>Country.fromJson(json)).toList();
  return listofcountry;
}

