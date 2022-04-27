import 'package:flutter/material.dart';

class statisticPage extends StatefulWidget {
  const statisticPage({Key? key}) : super(key: key);

  @override
  State<statisticPage> createState() => _statisticPageState();
}

class _statisticPageState extends State<statisticPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('특정 시간 범위 내에서의 번호 출현 횟수 조회 가능'));
  }
}
