import 'package:flutter/material.dart';
import 'package:wheather_app/widgetsui/getstarted.dart';
import 'package:wheather_app/widgetsui/weatherpage.dart';

class Connector extends StatefulWidget {
  const Connector({super.key});
  @override
  State<Connector> createState() {
    return _ConnectorState();
  }
}

class _ConnectorState extends State<Connector> {
  Widget? screenActive;
  @override
  void initState() {
    screenActive = FirstScreen(change: screenChange);
    super.initState();
  }

  void screenChange() {
    setState(() {
      screenActive = const WeatherPage();
    });
  }

  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: screenActive),
    );
  }
}
