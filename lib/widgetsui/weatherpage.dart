import 'package:flutter/material.dart';
import 'package:wheather_app/apistuffs/report.dart';
import 'package:wheather_app/apistuffs/weathermodel.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});
  @override
  State<WeatherPage> createState() {
    return WeatherPageState();
  }
}

class WeatherPageState extends State<WeatherPage> {
  TextEditingController controller = TextEditingController();
  WeatherModel? wheathermodel;
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 179, 223, 244),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(95, 235, 237, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                        child: TextField(
                          controller: controller,
                          decoration: const InputDecoration(
                            hintText: "Choose Your Location",
                            hintStyle:
                                TextStyle(color: Colors.black, fontSize: 27),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.location_pin,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            onPressed: () async {
                              wheathermodel =
                                  await Report().getweather(controller.text);
                              // print(wheathermodel?.main?.temp ?? "error");
                              setState(() {});
                            },
                            child: const Text(
                              "Search",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icontemperature.png",
                              height: 100,
                              width: 130,
                              // fit: BoxFit.fill,
                            ),
                          ),
                          const Text(
                            "Temperature",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "${wheathermodel?.main?.temp}",
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 3, 50, 91)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/humidityy.png",

                              height: 100,
                              width: 130,
                              // fit: BoxFit.fill,
                            ),
                          ),
                          const Text(
                            "Humidity",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "${wheathermodel?.main?.temp}",
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 3, 50, 91)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: const Color.fromARGB(255, 159, 203, 239),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/newwind.jpg",
                          height: 70,
                          width: 70,
                        ),
                        const Text(
                          "Wind Speed",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text("${wheathermodel?.wind?.speed}")
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: const Color.fromARGB(255, 159, 203, 239),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/visible.png",
                          height: 70,
                          width: 70,
                        ),
                        const Text(
                          "Visibility",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text("${wheathermodel?.visibility}"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: const Color.fromARGB(255, 159, 203, 239),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/coordinate.png",
                          height: 70,
                          width: 70,
                        ),
                        const Text(
                          "Latitude",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text("${wheathermodel?.coord?.lat}"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
