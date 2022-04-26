import 'package:flutter/material.dart';
import 'lotto.dart';

void main() {
  runApp(LottoApp());
}

class LottoApp extends StatelessWidget {
  const LottoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Jin Lotto',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _pageName = '';
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '로또 번호 생성가능한 페이지 (기본페이지로 사용)',
    ),
    Text(
      '로또 과거 당첨번호 조회',
    ),
    Text(
      '과거 당첨번호를 바탕으로 번호 통계 볼 수 있음',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void pageName() {
    if (_selectedIndex == 0) {
      _pageName = '로또 번호 생성';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_pageName'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '번호생성',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: '당첨번호 확인',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: '통계',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff4A88D9),
        onTap: _onItemTapped,
      ),
    );
  }
}
