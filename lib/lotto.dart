import 'package:flutter/material.dart';
import 'dart:math';

class lotto extends StatefulWidget {
  const lotto({Key? key}) : super(key: key);

  @override
  State<lotto> createState() => _lottoState();
}

List<int> LottoNumber = [];

int? makeLotto() {
  LottoNumber.clear();
  for (int i = 0; i < 7; i++) {
    var randomNumber = Random().nextInt(45) + 1;
    LottoNumber.add(randomNumber);
  }
  print(LottoNumber);
}

class _lottoState extends State<lotto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('로또 번호를 랜덤하게 만들 수 있는 곳'),
            SizedBox(
              height: 30,
            ),
            Text('$LottoNumber'),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                makeLotto();
              },
              child: Text('로또 번호 생성'),
            ),
          ],
        ),
      ),
    );
  }
}
