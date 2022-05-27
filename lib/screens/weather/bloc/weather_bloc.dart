import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nested_scrolling/service.dart/weather_service.dart';

import '../../../model/response/weather_response.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<LoadWeather>(_loadWeather);
  }

  _loadWeather(LoadWeather event, Emitter<WeatherState> emit) async {
    emit(WeatherLoading());
    Map<String, dynamic> request = {"query": "san"};
    var response = await WeatherService.callApi(request);

    if (response != null) {
      emit(WeatherLoaded(response));
    } else {
      emit(WeatherError());
    }
  }
}
