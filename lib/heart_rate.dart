import 'dart:ui';

import 'package:flutter/material.dart';

class HeartRateDashboard extends StatelessWidget {
  const HeartRateDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("NU Doctor"),
        titleTextStyle: const TextStyle(
          color: Color(0xFFF7ECDE),
          fontSize: 20.0,
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: window.physicalSize.height / 6,
            color: const Color(0xFF54BAB9),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Text(
                      "Current Heart Rate",
                      style: TextStyle(color: Colors.white, fontSize: 45.0),
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        children: [
                          Container(
                            child: const Text(
                              "XX",
                              // here the value collector from the sensor will be shown
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 80,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 5.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: window.physicalSize.height / 6,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Analysing",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/heartbeat.gif'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
