import 'package:flutter/material.dart';
import 'dart:math';

class lotto extends StatefulWidget {
  const lotto({Key? key}) : super(key: key);

  @override
  State<lotto> createState() => _lottoState();
}

class LottoModel {
  const LottoModel({required this.color, required this.number});

  final Color color;
  final int number;
}

List<LottoModel> testModel = const [
  LottoModel(color: Color(0xffe67e22), number: 1),
  LottoModel(color: Color(0xff3498db), number: 2),
  LottoModel(color: Color(0xffe74c3c), number: 3),
  LottoModel(color: Color(0xff95a5a6), number: 4),
  LottoModel(color: Color(0xff2ecc71), number: 5),
];

List<int> LottoNumber = [1, 2, 3, 4, 5, 6];

makeLotto() {
  LottoNumber.clear();
  for (int i = 0; LottoNumber.length < 6; i++) {
    int randomNumber = Random().nextInt(45) + 1;
    if (!LottoNumber.contains(randomNumber)) {
      LottoNumber.add(randomNumber);
    }
  }
  LottoNumber.sort();
}

class _lottoState extends State<lotto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                testModel.length,
                (index) => MycustomClass(
                  myNumber: testModel[index].number,
                  customColor: testModel[index].color,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  makeLotto();
                });
              },
              child: const Text('로또 번호 생성'),
            ),
          ],
        ),
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
    return CircleAvatar(
      backgroundColor: customColor,
      child: Text(
        "$myNumber",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
