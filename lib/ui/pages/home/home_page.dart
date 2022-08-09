import 'package:flutter/material.dart';
import 'package:flutter_base/common/app_text_styles.dart';
import 'package:flutter_base/models/enums/weather_characteristic_enum.dart';
import 'package:flutter_base/repositories/weather_repository.dart';
import 'package:flutter_base/ui/pages/home/bloc/home_page_bloc.dart';
import 'package:flutter_base/ui/pages/home/widgets/expandable_custom.dart';
import 'package:flutter_base/ui/pages/home/widgets/movie_characteristic_item.dart';
import 'package:flutter_base/ui/pages/home/widgets/weather_period_item.dart';
import 'package:flutter_base/utils/app_date_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeTextStyle = AppTextStyle.white;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          HomePageBloc(locationRepo: context.read<LocationRepository>())
            ..add(LoadingEvent()),
      child: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (BuildContext context, state) {
          if (state is HomePageLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomePageLoadedState) {
            final weatherData = state.weatherInformationResponse;
            final cityName = weatherData?.name ?? "";
            final description = weatherData?.weather?[0]?.description ?? "";
            final currentCalculationTime = weatherData?.dt ?? 0;
            final temperature = weatherData?.main?.temp ?? 0.0;
            final windRate = weatherData?.wind?.speed ?? 0.0;
            final pressure = weatherData?.main?.pressure ?? 0.0;
            final humidity = weatherData?.main?.humidity ?? 0.0;
            final String currentTime = AppDateUtils.toDateTimeString(
                DateTime.fromMicrosecondsSinceEpoch(currentCalculationTime));
            return Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildTopWidget(
                        cityName: cityName,
                        description: description,
                        temperature: temperature,
                        currentTime: currentTime,
                        windSpeed: windRate,
                        pressure: pressure,
                        humidity: humidity,
                      ),
                      _buildMidWidget(),
                      _buildBottomWidget()
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _buildBottomWidget() {
    return const ExpandableCustom();
  }

  Widget _buildTopWidget({
    required String cityName,
    required String description,
    required double temperature,
    required String currentTime,
    required double pressure,
    required double windSpeed,
    required double humidity,
  }) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.backgroundColor),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.add,
                color: AppColors.textWhite,
              ),
              Text(cityName, style: homeTextStyle.copyWith(fontSize: 20)),
              const Icon(
                Icons.menu,
                color: AppColors.textWhite,
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(currentTime,
                  style: homeTextStyle.copyWith(fontSize: 25))),
          Text(
            temperature.toString(),
            style: homeTextStyle.copyWith(
              fontSize: 55,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            description.toUpperCase(),
            textAlign: TextAlign.center,
            style: homeTextStyle.copyWith(
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Divider(thickness: 2, color: AppColors.textWhite),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeatherCharacteristicItem(
                title: windSpeed.toString(),
                subtitle: "Wind",
                weatherCharacteristic: WeatherCharacteristic.WIND,
              ),
              WeatherCharacteristicItem(
                title: windSpeed.toString(),
                subtitle: "Chance of rain",
                weatherCharacteristic: WeatherCharacteristic.CHANCE_OF_RAIN,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeatherCharacteristicItem(
                subtitle: "Pressure",
                title: pressure.toString(),
                weatherCharacteristic: WeatherCharacteristic.PRESSURE,
              ),
              WeatherCharacteristicItem(
                subtitle: "Humidity",
                title: humidity.toString(),
                weatherCharacteristic: WeatherCharacteristic.HUMIDITY,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMidWidget() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: const BoxDecoration(color: AppColors.backgroundColor),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            5,
            (index) => WeatherPeriodItem(),
          ),
        ));
  }
}
