import 'package:flutter/material.dart';
import 'package:flutter_base/common/app_text_styles.dart';

import '../../../../common/app_colors.dart';

class WeatherPeriodItem extends StatelessWidget {
  final double? temperature;

  const WeatherPeriodItem({Key? key, this.temperature}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            width: 50,
            child: Text(
              "Sunday Nov14",
              style: AppTextStyle.white.copyWith(fontSize: 13),
              softWrap: true,
              maxLines: 2,
            ),
          ),
        ),
        const Icon(Icons.grain, color: AppColors.textWhite, size: 20),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text((temperature ?? 20).toString(),
                style: AppTextStyle.white)),
        const Text("74% rain", style: AppTextStyle.white),
      ],
    );
  }
}
