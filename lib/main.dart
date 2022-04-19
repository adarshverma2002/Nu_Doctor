import 'package:flutter/material.dart';
import 'package:wowowo/again.dart';
import 'package:wowowo/heart_rate.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(title: 'All Bluetooth Devices'),
    theme: ThemeData(fontFamily: "yoyo"),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F1),
      appBar: AppBar(
        title: const Text("NU Doctor"),
        titleTextStyle: const TextStyle(
          color: Color(0xFFF7ECDE),
          fontSize: 20.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        children: [
          Flexible(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 8.0,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HeartRateDashboard(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Heart Rate",
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Color(0xFFFFFFFF),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    width: 300,
                    height: 200,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/heart1.png'),
                        alignment: Alignment(0.72, 0.1),
                      ),
                      color: const Color(0xFF54BAB9),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ],
              ),
            ),
          )),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 8.0,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Calorie Tracker",
                    style: TextStyle(fontSize: 35.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                width: 300,
                height: 200,
                margin: const EdgeInsets.all(9.5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/running man (1).png'),
                    alignment: Alignment(0.72, 0.1),
                  ),
                  color: const Color(0xFF54BAB9),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 8.0,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Data History",
                    style: TextStyle(fontSize: 38.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                width: 500,
                height: 200,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF54BAB9),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
