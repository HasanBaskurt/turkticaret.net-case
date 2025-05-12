// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CountryModel {
  final String name;
  final String flag;
  final String city;
  final int? locationCount;
  final int strength;
  CountryModel({
    required this.name,
    required this.flag,
    required this.city,
    required this.locationCount,
    required this.strength,
  });

  CountryModel copyWith({
    String? name,
    String? flag,
    String? city,
    int? locationCount,
    int? strength,
  }) {
    return CountryModel(
      name: name ?? this.name,
      flag: flag ?? this.flag,
      city: city ?? this.city,
      locationCount: locationCount ?? this.locationCount,
      strength: strength ?? this.strength,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'flag': flag,
      'city': city,
      'locationCount': locationCount,
      'strength': strength,
    };
  }

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(
      name: map['name'] as String,
      flag: map['flag'] as String,
      city: map['city'] as String,
      locationCount: map['locationCount'] as int,
      strength: map['strength'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryModel.fromJson(String source) =>
      CountryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CountryModel(name: $name, flag: $flag, city: $city, locationCount: $locationCount, strength: $strength)';
  }

  @override
  bool operator ==(covariant CountryModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.flag == flag &&
        other.city == city &&
        other.locationCount == locationCount &&
        other.strength == strength;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        flag.hashCode ^
        city.hashCode ^
        locationCount.hashCode ^
        strength.hashCode;
  }
}
