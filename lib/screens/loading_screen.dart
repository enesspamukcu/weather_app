import 'package:flutter/material.dart';
import 'package:flutter_weather_app/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_weather_app/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  WeatherModel weatherModel = WeatherModel();

  void getLocationData() async {
    var weatherData = await weatherModel.getLocationWeather();
    Future.delayed(Duration.zero, () async {
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) =>
                  LocationScreen(locationWeather: weatherData)));
    });
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitDoubleBounce(
        color: Colors.white,
        size: 100.0,
      )),
    );
  }
}
