// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:weather_app/weather/model/weather/model.dart';

class DailyForecast {
  final DateTime date;
  final Temperature minTemp;
  final Temperature maxTemp;
  final Day day;
  final Day night;
  final String mobileLink;
  final String link;
  DailyForecast({
    required this.date,
    required this.minTemp,
    required this.maxTemp,
    required this.day,
    required this.night,
    required this.mobileLink,
    required this.link,
  });

  DailyForecast copyWith({
    DateTime? date,
    Temperature? minTemp,
    Temperature? maxTemp,
    Day? day,
    Day? night,
    String? mobileLink,
    String? link,
  }) {
    return DailyForecast(
      date: date ?? this.date,
      minTemp: minTemp ?? this.minTemp,
      maxTemp: maxTemp ?? this.maxTemp,
      day: day ?? this.day,
      night: night ?? this.night,
      mobileLink: mobileLink ?? this.mobileLink,
      link: link ?? this.link,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date.millisecondsSinceEpoch,
      'minTemp': minTemp.toMap(),
      'maxTemp': maxTemp.toMap(),
      'day': day.toMap(),
      'night': night.toMap(),
      'mobileLink': mobileLink,
      'link': link,
    };
  }

  factory DailyForecast.fromMap(Map<String, dynamic> map) {
    return DailyForecast(
      date: DateTime.fromMillisecondsSinceEpoch(map['EpochDate'] as int),
      minTemp: Temperature.fromMap(
          map['Temperature']['Minimum'] as Map<String, dynamic>),
      maxTemp: Temperature.fromMap(
          map['Temperature']['Maximum'] as Map<String, dynamic>),
      day: Day.fromMap(map['Day'] as Map<String, dynamic>),
      night: Day.fromMap(map['Night'] as Map<String, dynamic>),
      mobileLink: map['MobileLink'] as String,
      link: map['Link'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DailyForecast.fromJson(String source) =>
      DailyForecast.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DailyForecast(date: $date, minTemp: $minTemp, maxTemp: $maxTemp, day: $day, night: $night, mobileLink: $mobileLink, link: $link)';
  }

  @override
  bool operator ==(covariant DailyForecast other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.minTemp == minTemp &&
        other.maxTemp == maxTemp &&
        other.day == day &&
        other.night == night &&
        other.mobileLink == mobileLink &&
        other.link == link;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        minTemp.hashCode ^
        maxTemp.hashCode ^
        day.hashCode ^
        night.hashCode ^
        mobileLink.hashCode ^
        link.hashCode;
  }
}
