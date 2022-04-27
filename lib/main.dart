import 'package:flutter/material.dart';
import 'lotto.dart';
import 'pastLotto.dart';
import 'statistic.dart';

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

  String pageName() {
    if (_selectedIndex == 0) {
      return '로또 번호 생성';
    } else if (_selectedIndex == 1) {
      return '당첨 번호 확인';
    } else if (_selectedIndex == 2) {
      return '통계';
    } else {
      return '잘못된 페이지입니다.';
    }
  }

  static const List<Widget> _widgetOptions = <Widget>[
    lotto(),
    pastLottoPage(),
    statisticPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName()),
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
