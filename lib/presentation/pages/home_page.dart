import 'package:flutter/material.dart';
import 'package:weather_all/data/models/weather.dart';
import 'package:weather_all/presentation/widgets/current_weather.dart';
import 'package:weather_all/presentation/widgets/today_weather.dart';

import '../../data/services/weather_service.dart';

Weather? currentTemp;
Weather? tomorrowTemp;
List<Weather>? todayWeather;
List<Weather>? sevenDay;

String lon = "72.877426";
String lat = "19.076090";
String city = "Minisk";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getData() {
    fetchData(lat, lon, city).then((value) {
      currentTemp = value[0];
      todayWeather = value[1];
      tomorrowTemp = value[2];
      sevenDay = value[3];
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      body: currentTemp == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [CurrentWeather(getData()), TodayWeather()],
            ),
    );
  }
}
