import 'package:flutter/material.dart';
import 'package:flutter_base/common/app_text_styles.dart';

import '../../../../common/app_colors.dart';

class WeatherPeriodItem extends StatelessWidget {
  const WeatherPeriodItem({Key? key}) : super(key: key);

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
                ))),
        const Icon(Icons.grain, color: AppColors.textWhite, size: 20),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("20/24", style: AppTextStyle.white)),
        Text("74% rain", style: AppTextStyle.white),
      ],
    );
  }
}
