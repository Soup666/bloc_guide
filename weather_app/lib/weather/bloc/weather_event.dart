part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

class CityRequested extends WeatherEvent {
  final String cityName;
  CityRequested(this.cityName);
}
