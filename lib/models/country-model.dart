class Country {
  String name;

  Country({ this.name });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    name: json['name'],
  );
}