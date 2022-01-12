import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dices(),
      ),
    );
  }
}

class Dices extends StatefulWidget {
  Dices({Key key}) : super(key: key);

  @override
  _DicesState createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  int numLeftDice = 1, numRightDice = 1;

  void changeDices() {
    setState(() {
      numLeftDice = Random().nextInt(6) + 1;
      numRightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('imagens/dado$numLeftDice.png'),
              onPressed: changeDices,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('imagens/dado$numRightDice.png'),
              onPressed: changeDices,
            ),
          ),
        ],
      ),
    );
  }
}
