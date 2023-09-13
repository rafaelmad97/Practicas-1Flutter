import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Contador"),
        trailing: CupertinoButton(child: Text("Reset"), onPressed: null),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: const <Widget>[
              Text("Numero de Clicks",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("0",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              CupertinoButton(child: Text("+1"), onPressed: null),
              CupertinoButton(child: Text("-1"), onPressed: null)
            ],
          )
        ],
      )),
    );
  }
}
