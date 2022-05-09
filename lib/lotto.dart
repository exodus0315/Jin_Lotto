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
  for (int i = 0; LottoNumber.length < 6; i++) {
    var randomNumber = Random().nextInt(45) + 1;
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
            const Text('로또 번호를 랜덤하게 만들 수 있는 곳'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${LottoNumber[0]}'),
                SizedBox(
                  width: 10,
                ),
                Text('${LottoNumber[1]}'),
                SizedBox(
                  width: 10,
                ),
                Text('${LottoNumber[2]}'),
                SizedBox(
                  width: 10,
                ),
                Text('${LottoNumber[3]}'),
                SizedBox(
                  width: 10,
                ),
                Text('${LottoNumber[4]}'),
                SizedBox(
                  width: 10,
                ),
                Text('${LottoNumber[5]}'),
                SizedBox(
                  width: 10,
                ),
              ],
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
