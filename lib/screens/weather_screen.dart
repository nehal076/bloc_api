import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested_scrolling/screens/weather/bloc/weather_bloc.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<WeatherBloc>(context).add(LoadWeather());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is WeatherLoading) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(child: CircularProgressIndicator()),
          );
        }

        if (state is WeatherLoaded) {
          return Scaffold(
            appBar: AppBar(),
            body: ListView.builder(
              itemCount: state.response.length,
              itemBuilder: (context, index) {
                var data = state.response[index];
                return ListTile(
                  title: Text(data.title),
                  subtitle: Text(data.locationType),
                  trailing: Text(data.woeid.toString()),
                );
              },
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(),
          body: const Center(child: Text("Error")),
        );
      },
    );
  }
}
