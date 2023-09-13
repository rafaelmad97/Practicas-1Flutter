import 'dart:developer';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;

  void onPressIncrementcounter() => setState(() {
        _counter++;
      });
  void onPressResetcounter() => setState(() {
        _counter = 0;
      });
  void onPressDecrementcounter() => setState(() {
        _counter--;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Primer App Flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Numero de clicks",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                '$_counter',
                style:
                    const TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                onPressed: onPressIncrementcounter,
                child: const Icon(Icons.exposure_plus_1),
              ),
              FloatingActionButton.extended(
                onPressed: onPressResetcounter,
                label: const Text("Reset"),
              ),
              FloatingActionButton(
                onPressed: onPressDecrementcounter,
                child: const Icon(Icons.exposure_minus_1),
              ),
            ]));
  }
}
