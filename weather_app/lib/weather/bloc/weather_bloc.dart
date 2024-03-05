import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/weather/model/city/model.dart';
import 'package:weather_app/weather/model/weather/weather.dart';
import 'package:weather_app/weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) {});
    on<CityRequested>(_fetchCity);
    on<CityReset>(_resetCity);
  }

  final WeatherRepository _weatherRepository;

  Future<void> _fetchCity(
      CityRequested cityRequested, Emitter<WeatherState> emit) async {
    emit(WeatherLoading());
    try {
      final City city =
          await _weatherRepository.getCity(cityRequested.cityName);
      final Weather weather = await _weatherRepository.getWeather(city.key);
      emit(WeatherLoaded(city, weather));
    } catch (e, stack) {
      print("$stack");
      emit(WeatherLoadError("Failed to load city/weather: $e"));
    }
  }

  void _resetCity(CityReset event, Emitter<WeatherState> emit) =>
      emit(WeatherInitial());
}
