// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class City {
  final String key;
  final String englishName;
  City({
    required this.key,
    required this.englishName,
  });

  City copyWith({
    String? key,
    String? englishName,
  }) {
    return City(
      key: key ?? this.key,
      englishName: englishName ?? this.englishName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'englishName': englishName,
    };
  }

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      key: map['Key'] as String,
      englishName: map['EnglishName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory City.fromJson(String source) =>
      City.fromMap((json.decode(source) is List<dynamic>)
          ? (json.decode(source) as List<dynamic>).first
          : (json.decode(source) as Map<String, dynamic>));

  @override
  String toString() => 'City(key: $key, englishName: $englishName)';

  @override
  bool operator ==(covariant City other) {
    if (identical(this, other)) return true;

    return other.key == key && other.englishName == englishName;
  }

  @override
  int get hashCode => key.hashCode ^ englishName.hashCode;
}
