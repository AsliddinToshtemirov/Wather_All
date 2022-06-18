import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_all/data/models/weather.dart';
import 'package:weather_all/presentation/pages/home_page.dart';

class SevenDays extends StatelessWidget {
  List<Weather> sevenDay;
  SevenDays(this.sevenDay);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: sevenDay.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sevenDay[index].day!,
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 135,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(sevenDay[index].image!),
                        width: 40,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        sevenDay[index].name!,
                        style: const TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "+" + sevenDay[index].max.toString() + "\u00B0",
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "+" + sevenDay[index].min.toString() + "\u00B0",
                      style: const TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
