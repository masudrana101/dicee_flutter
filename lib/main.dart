import 'dart:math';
import 'package:flutter/material.dart';





void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,

        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: DicePage(),

      ),
    ),
  );
}












class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}
st
class _DicePageState extends State<DicePage> {
  int leftDiceNumbuer = 1;
  int rightDiceNumbuer = 5;

  void changeDiceFace(){
    setState(() {
      rightDiceNumbuer = Random().nextInt(6) + 1;
      leftDiceNumbuer = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(


            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumbuer.png'),
            ),
          ),

          Expanded(

            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNumbuer.png'),
            ),

          ),
        ],
      ),

    );
  }
}

