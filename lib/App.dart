import 'package:flutter/material.dart';
import 'package:modulo1_contador_personalizado/screens/Homepage.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "androidApp",
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme(
              onPrimary: Colors.white,
              onSecondary: Colors.white,
              onError: Colors.white,
              onBackground: Colors.black,
              onSurface: Colors.white,
              surface: Colors.black,
              primary: Colors.red,
              secondary: Colors.blue,
              brightness: Brightness.light,
              background: Colors.white,
              error: Colors.redAccent)),
      home: const Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
