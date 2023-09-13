import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 100;

  onPressResetCounter() => setState(() => _counter = 0);
  onPressIncrementCounter() => setState(() => _counter++);
  onPressDecrementCounter() => setState(() => _counter--);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: const Text("Contador"),
          trailing: GestureDetector(
            onTap: onPressResetCounter,
            child: const Text("Reset"),
          )),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              const Text("Numero de Clicks",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("$_counter",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w200)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CupertinoButton.filled(
                  onPressed: onPressIncrementCounter, child: const Text("+1")),
              CupertinoButton.filled(
                  onPressed: onPressDecrementCounter, child: const Text("-1"))
            ],
          )
        ],
      )),
    );
  }
}
