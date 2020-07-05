import 'package:countrylist/model/country.dart';
import 'package:countrylist/networklayer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Country List"),),
      body: FutureBuilder<List<Country>>(
        future: fetchCountry(http.Client()),
        builder: (context,snapshot){
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData ?
          Text(snapshot.toString(),style: TextStyle(color: Colors.red),) :
          Center(child: CircularProgressIndicator(backgroundColor: Colors.red,),);
        },
      )
    );
  }
}