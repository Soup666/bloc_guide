part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final City city;
  final Weather weather;
  WeatherLoaded(this.city, this.weather);
}

class WeatherLoadError extends WeatherState {
  final String error;
  WeatherLoadError(this.error);
}
