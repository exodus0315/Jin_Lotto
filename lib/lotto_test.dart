import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class LottoModel {
  const LottoModel({required this.color, required this.number});

  final Color color;
  final int number;
}

List<LottoModel> testModel = const [
  LottoModel(color: Colors.red, number: 1),
  LottoModel(color: Colors.blue, number: 2),
  LottoModel(color: Colors.yellow, number: 3),
  LottoModel(color: Colors.green, number: 4),
  LottoModel(color: Colors.purple, number: 5),
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            children: List.generate(
                testModel.length,
                (index) => MycustomClass(
                      myNumber: testModel[index].number,
                      customColor: testModel[index].color,
                    ))),
      ),
    );
  }
}

class MycustomClass extends StatelessWidget {
// const MycustomClass({ Key? key, Color? this.customColor, int? myNumber }) : super(key: key);
  MycustomClass({Key? key, required this.customColor, required this.myNumber})
      : super(key: key);

  Color customColor;
  int myNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: customColor,
      child: Text("$myNumber"),
    );
  }
}
