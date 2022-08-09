import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_base/database/share_preferences_helper.dart';
import 'package:flutter_base/models/response/weather_information_response.dart';
import 'package:flutter_base/repositories/weather_repository.dart';
import 'package:meta/meta.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final LocationRepository locationRepo;

  HomePageBloc({required this.locationRepo}) : super(HomePageLoadingState()) {
    on<HomePageEvent>((event, emit) async {
      final longitude = await SharedPreferencesHelper.getLongitude();
      final latitude = await SharedPreferencesHelper.getLatitude();
      emit(HomePageLoadingState());
      try {
        final weatherData = await locationRepo.getWeatherContent(
            latitude: latitude ?? 0.0, longitude: longitude ?? 0.0);
        emit(HomePageLoadedState(weatherInformationResponse: weatherData));
        print(weatherData);
      } catch (e) {
        print(e);
      }
    });
  }
}
