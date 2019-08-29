import 'package:flutter/material.dart';
import 'package:zz_trip/tabs/home.dart';
import 'package:zz_trip/tabs/journey.dart';
import 'package:zz_trip/tabs/mine.dart';
import 'package:zz_trip/tabs/souvenir.dart';

class TabBarView extends StatefulWidget {
  TabBarView({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _TabBarViewState();
  }
}

class _TabBarViewState extends State<TabBarView> {

  final _pages = [
    HomePage(),
    JourneyPage(),
    SouvenirPage(),
    MinePage()
  ];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Text("首页"),
            icon: Icon(Icons.home,),
          ),
          BottomNavigationBarItem(
            title: Text("行程"),
            icon: Icon(Icons.date_range),
          ),
          BottomNavigationBarItem(
            title: Text("旅拍"),
            icon: Icon(Icons.image),
          ),
          BottomNavigationBarItem(
            title: Text("我的"),
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: _currentPage,
        onTap: (int index){
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
} 