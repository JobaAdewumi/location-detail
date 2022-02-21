import 'package:flutter/material.dart';

import 'screens/location_detail/location_detail.dart';
import 'screens/locations/locations.dart';
import 'style.dart';

const LocationRoute = '/';
const LocationDetailRoute = '/location_detail';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      initialRoute: LocationRoute,
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments as dynamic;
      Route screen;
      switch (settings.name) {
        case LocationRoute:
          screen =
              MaterialPageRoute(builder: (BuildContext context) => Locations());
          break;
        case LocationDetailRoute:
          screen = MaterialPageRoute(
              builder: (BuildContext context) =>
                  LocationDetail(arguments['id']));
          break;
        default:
          return null;
      }
      return screen;
    };
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontFamily: FontNameDefault,
          fontWeight: FontWeight.w300,
          fontSize: MediumTextSize,
          color: Colors.white,
        ),
      ),
      textTheme: const TextTheme(
        headline6: TitleTextStyle,
        bodyText1: Body1TextStyle,
      ),
    );
  }
}
