

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weather_app/services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

void getLocation() async {
  Location location = Location();
  await location.getlocation();
  print(location.latitude);

  // --------------gettingData from openWeatherApp-------------

  // Uri urlLink = Uri.parse(
  //     'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=6572186dcd41ae14e48640acf71f0293');

  // http.Response response = await http.get(urlLink);

  // print(response.body);

}


class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();
          },
          child: const Text(
            'Get Location',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
