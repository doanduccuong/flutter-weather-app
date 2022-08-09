import 'package:flutter/material.dart';
import 'package:flutter_base/common/app_colors.dart';
import 'package:flutter_base/common/app_text_styles.dart';
import 'package:flutter_base/models/enums/weather_characteristic_enum.dart';

class WeatherCharacteristicItem extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final WeatherCharacteristic weatherCharacteristic;

  const WeatherCharacteristicItem({
    Key? key,
    this.title,
    this.subtitle,
    required this.weatherCharacteristic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 160,
      child: ListTile(
        leading: _getIcon(weatherCharacteristic),
        title: Text(title ?? "Titile", style: AppTextStyle.white),
        minLeadingWidth: 0,
        subtitle: Text(subtitle ?? "Subtitle", style: AppTextStyle.white),
      ),
    );
  }

  Widget _getIcon(WeatherCharacteristic weatherCharacteristic) {
    switch (weatherCharacteristic) {
      case WeatherCharacteristic.PRESSURE:
        return const Icon(Icons.padding, size: 35, color: AppColors.textWhite);
      case WeatherCharacteristic.WIND:
        return const Icon(Icons.wind_power,
            size: 35, color: AppColors.textWhite);
      case WeatherCharacteristic.CHANCE_OF_RAIN:
        return const Icon(Icons.grain, size: 35, color: AppColors.textWhite);
      case WeatherCharacteristic.HUMIDITY:
        return const Icon(Icons.hub, size: 35, color: AppColors.textWhite);
    }
  }
}
