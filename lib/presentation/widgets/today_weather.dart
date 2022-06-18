import 'package:flutter/material.dart';
import 'package:weather_all/presentation/pages/details_page.dart';
import 'package:weather_all/presentation/pages/home_page.dart';
import 'package:weather_all/presentation/widgets/weather_widget.dart';

class TodayWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Today",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsPage(sevenDay!, tomorrowTemp!))),
                child: Row(
                  children: const [
                    Text(
                      "7 days",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeatherWidget(todayWeather![0]),
                  WeatherWidget(todayWeather![1]),
                  WeatherWidget(todayWeather![2]),
                  WeatherWidget(todayWeather![3]),
                ]),
          )
        ],
      ),
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
    );
  }
}
