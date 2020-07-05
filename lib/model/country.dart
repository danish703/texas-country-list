class Country{
  String name;
  String nativeName;
  String flag;
  String capital;

  Country({this.name,this.flag,this.capital,this.nativeName});

  factory Country.fromJson(Map<String,dynamic> json){
    return Country(
      name: json['name'].toString(),
      flag: json['flag'] as String,
      capital: json['capital'] as String,
      nativeName: json['nativeName'] as String,
    );
  }

}