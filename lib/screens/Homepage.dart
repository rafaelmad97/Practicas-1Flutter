import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
