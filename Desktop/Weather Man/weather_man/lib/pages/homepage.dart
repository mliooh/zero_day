import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
// check if it's daytime or nighttime
//

    bool isDaytime = isDaytimeNow();

// colors background for day and night
//

    const LinearGradient daytimeGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFFc5defe), Color(0xFFc5dfff), Color(0xFFcee6ff)],
    );

    const LinearGradient nighttimeGradient = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF3c365e),
          Color(0xFF2f2e50),
        ]);

    final TextStyle textStyle = TextStyle(
      color: isDaytime ? Colors.black : Colors.white,
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: isDaytime ? daytimeGradient : nighttimeGradient),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
            child: Center(
              child: Column(
                children: [
                  /*
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'weather',
                            style: textStyle,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.menu_sharp,
                        color: isDaytime ? Colors.black : Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset(
                      "lib/images/thunderstorm.png",
                      height: 400,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Monday,June', style: textStyle),
                          Text(
                            '31',
                            style: TextStyle(fontSize: 90, color: Colors.white),
                          ),
                          Text('feels like 32', style: textStyle)
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('14:00', style: textStyle),
                          Image.asset(
                            "lib/images/thunderstorm.png",
                            height: 60,
                            width: 40,
                          ),
                          Text('32', style: textStyle)
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('14:00'),
                          Image.asset(
                            "lib/images/thunderstorm.png",
                            height: 60,
                            width: 40,
                          ),
                          Text(
                            '32',
                            style: textStyle,
                          )
                        ],
                      )
                    ],
                  )
                  */
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// function for checking  if it's daytime or nighttime
//

bool isDaytimeNow() {
  DateTime now = DateTime.now();
  int currentHour = now.hour;
  return currentHour >= 6 && currentHour < 18;
}
