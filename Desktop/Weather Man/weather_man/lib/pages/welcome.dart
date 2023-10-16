import 'package:flutter/material.dart';
import 'package:weather_man/pages/homepage.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topRight,
                colors: [Colors.white30, Color.fromARGB(255, 2, 17, 39)])),

        // icon

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Image.asset(
                  "lib/images/thunderstorm.png",
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 60,
              ),

// text
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Weather",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "News",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "& Feed",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to Weatherly, your go-to destination for \nup-to-the-minute weather updates.\n\nStay informed and plan your day with our\naccurate forecasts and real-time weather data.",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),

// get started button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonBar(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                            onPrimary: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 120, vertical: 15),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homepage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
