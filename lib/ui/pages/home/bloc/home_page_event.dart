part of 'home_page_bloc.dart';

@immutable
abstract class HomePageEvent {}

class LoadingEvent extends HomePageEvent {}

class LoadedEvent extends HomePageEvent {}
