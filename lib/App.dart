import 'package:flutter/material.dart';
import 'package:modulo1_contador_personalizado/screens/Homepage.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "androidApp", home: Homepage());
  }
}
