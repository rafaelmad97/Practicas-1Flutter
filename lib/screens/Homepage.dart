import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Contador"),
        trailing: CupertinoButton(child: const Text("Reset"), onPressed: null),
      ),
      child: Center(child: Text("wii")),
    );
  }
}
