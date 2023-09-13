import 'dart:developer';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;

  void onPressIncrementcounter() => setState(() => _counter++);

  int getCounter() => _counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("titulo de prueba"),
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
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
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
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: onPressIncrementcounter,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: onPressIncrementcounter,
                child: const Icon(Icons.add),
              ),
            ]));
  }
}
