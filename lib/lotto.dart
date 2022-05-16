import 'package:flutter/material.dart';
import 'dart:math';

class lotto extends StatefulWidget {
  const lotto({Key? key}) : super(key: key);

  @override
  State<lotto> createState() => _lottoState();
}

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

class CircleNumber {
  Widget? colorCircle(int LottoNumber) {
    if (LottoNumber < 10) {
      return CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text('$LottoNumber'),
      );
    } else {
      return CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text('$LottoNumber'),
      );
    }
  }
}

CircleNumber circle = CircleNumber();
Widget? resultNumber1 = circle.colorCircle(LottoNumber[0]);

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
              children: [
                resultNumber1!,
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('${LottoNumber[1]}'),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('${LottoNumber[2]}'),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('${LottoNumber[3]}'),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('${LottoNumber[4]}'),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('${LottoNumber[5]}'),
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
