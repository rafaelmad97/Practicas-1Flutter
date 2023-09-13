import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _counter = 0;

  void onPressFloatingbutton() {
    print("hola aqui hago una vaina");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(child: Text("Android")),
        floatingActionButton: FloatingActionButton(
          onPressed: onPressFloatingbutton,
          child: const Icon(Icons.add),
        ));
  }
}
