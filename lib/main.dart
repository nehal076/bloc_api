import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_scrolling/screens/weather/bloc/weather_bloc.dart';

import 'screens/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (BuildContext context) => WeatherBloc(),
        // child: ExampleExpandableFab()
        // child: const ChipsWidget(),
        child: const WeatherScreen(),
        // child: InteractiveViewer(
        //   alignPanAxis: true,
        //   constrained: true,
        //   scaleEnabled: true,
        //   maxScale: 5.0,
        //   child: const NestedScroll(),
        // ),
        // child: const Hexagon(),
      ),
    );
  }
}
