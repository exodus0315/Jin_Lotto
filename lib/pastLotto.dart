import 'package:flutter/material.dart';

class pastLottoPage extends StatefulWidget {
  const pastLottoPage({Key? key}) : super(key: key);

  @override
  State<pastLottoPage> createState() => _pastLottoPageState();
}

class _pastLottoPageState extends State<pastLottoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('과거 로또에 당첨된 번호를 조회할 수 있는 페이지'));
  }
}
