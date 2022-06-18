// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../data/models/weather.dart';
import '../widgets/seven_days.dart';
import '../widgets/tomorrow_weather.dart';

class DetailsPage extends StatelessWidget {
  final Weather tomorrowTemp;
  final List<Weather> sevenDay;

  const DetailsPage(this.sevenDay, this.tomorrowTemp, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030331),
      body: Column(
        children: [TomorrowWeather(tomorrowTemp), SevenDays(sevenDay)],
      ),
    );
  }
}
