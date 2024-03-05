// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:weather_app/weather/model/weather/model.dart';

class Weather {
  final Headline headline;
  final DailyForecast dailyForecast;
  Weather({
    required this.headline,
    required this.dailyForecast,
  });

  Weather copyWith({
    Headline? headline,
    DailyForecast? dailyForecast,
  }) {
    return Weather(
      headline: headline ?? this.headline,
      dailyForecast: dailyForecast ?? this.dailyForecast,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headline': headline.toMap(),
      'dailyForecast': dailyForecast.toMap(),
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      headline: Headline.fromMap(map['Headline'] as Map<String, dynamic>),
      dailyForecast: DailyForecast.fromMap(
          (map['DailyForecasts'] is List<dynamic>)
              ? (map['DailyForecasts']).first
              : (map['DailyForecasts'] as Map<String, dynamic>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Weather(headline: $headline, dailyForecast: $dailyForecast)';

  @override
  bool operator ==(covariant Weather other) {
    if (identical(this, other)) return true;

    return other.headline == headline && other.dailyForecast == dailyForecast;
  }

  @override
  int get hashCode => headline.hashCode ^ dailyForecast.hashCode;
}
