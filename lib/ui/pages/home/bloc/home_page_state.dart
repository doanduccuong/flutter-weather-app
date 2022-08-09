part of 'home_page_bloc.dart';

@immutable
abstract class HomePageState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomePageInitial extends HomePageState {}

class HomePageLoadingState extends HomePageState {}

class HomePageLoadedState extends HomePageState {
  final WeatherInformationResponse? weatherInformationResponse;

  HomePageLoadedState({required this.weatherInformationResponse});

  @override
  List<Object?> get props => [weatherInformationResponse];
}
