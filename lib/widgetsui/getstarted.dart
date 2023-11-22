import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key, required this.change});

  final void Function() change;
  @override
  Widget build(context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 76, 175, 150),
          Color.fromARGB(255, 85, 190, 242)
        ])),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/cloudimages.png",
                  height: 300,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                    right: 60,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 237, 203, 244),
                    ),
                    onPressed: change,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Getting started!",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        IconButton(
                          onPressed: change,
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.blue,
                          ),
                        )
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
