// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Day {
  final int icon;
  final String iconPhrase;
  final bool hasPrecipitation;
  final String? precipitationType;
  final String? precipitationIntensity;
  Day({
    required this.icon,
    required this.iconPhrase,
    required this.hasPrecipitation,
    this.precipitationType,
    this.precipitationIntensity,
  });

  Day copyWith({
    int? icon,
    String? iconPhrase,
    bool? hasPrecipitation,
    String? precipitationType,
    String? precipitationIntensity,
  }) {
    return Day(
      icon: icon ?? this.icon,
      iconPhrase: iconPhrase ?? this.iconPhrase,
      hasPrecipitation: hasPrecipitation ?? this.hasPrecipitation,
      precipitationType: precipitationType ?? this.precipitationType,
      precipitationIntensity:
          precipitationIntensity ?? this.precipitationIntensity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icon': icon,
      'iconPhrase': iconPhrase,
      'hasPrecipitation': hasPrecipitation,
      'precipitationType': precipitationType,
      'precipitationIntensity': precipitationIntensity,
    };
  }

  factory Day.fromMap(Map<String, dynamic> map) {
    return Day(
      icon: map['Icon'] as int,
      iconPhrase: map['IconPhrase'] as String,
      hasPrecipitation: map['HasPrecipitation'] as bool,
      precipitationType: map['PrecipitationType'] != null
          ? map['PrecipitationType'] as String
          : null,
      precipitationIntensity: map['PrecipitationIntensity'] != null
          ? map['PrecipitationIntensity'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Day.fromJson(String source) =>
      Day.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Day(icon: $icon, iconPhrase: $iconPhrase, hasPrecipitation: $hasPrecipitation, precipitationType: $precipitationType, precipitationIntensity: $precipitationIntensity)';
  }

  @override
  bool operator ==(covariant Day other) {
    if (identical(this, other)) return true;

    return other.icon == icon &&
        other.iconPhrase == iconPhrase &&
        other.hasPrecipitation == hasPrecipitation &&
        other.precipitationType == precipitationType &&
        other.precipitationIntensity == precipitationIntensity;
  }

  @override
  int get hashCode {
    return icon.hashCode ^
        iconPhrase.hashCode ^
        hasPrecipitation.hashCode ^
        precipitationType.hashCode ^
        precipitationIntensity.hashCode;
  }
}
