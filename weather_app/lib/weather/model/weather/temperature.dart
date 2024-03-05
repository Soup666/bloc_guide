// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Temperature {
  final double value;
  final String unit;
  final int unitType;
  Temperature({
    required this.value,
    required this.unit,
    required this.unitType,
  });

  Temperature copyWith({
    double? value,
    String? unit,
    int? unitType,
  }) {
    return Temperature(
      value: value ?? this.value,
      unit: unit ?? this.unit,
      unitType: unitType ?? this.unitType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'unit': unit,
      'unitType': unitType,
    };
  }

  factory Temperature.fromMap(Map<String, dynamic> map) {
    return Temperature(
      value: map['Value'] as double,
      unit: map['Unit'] as String,
      unitType: map['UnitType'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Temperature.fromJson(String source) =>
      Temperature.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Temperature(value: $value, unit: $unit, unitType: $unitType)';

  @override
  bool operator ==(covariant Temperature other) {
    if (identical(this, other)) return true;

    return other.value == value &&
        other.unit == unit &&
        other.unitType == unitType;
  }

  @override
  int get hashCode => value.hashCode ^ unit.hashCode ^ unitType.hashCode;
}
