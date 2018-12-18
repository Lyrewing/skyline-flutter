import 'package:flutter/material.dart';
import 'home.dart';

class LayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LayoutPageState();
  }
}

class _LayoutPageState extends State<StatefulWidget> {
  int _currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: MyHomePage(title: 'Flutter'),
      bottomNavigationBar: getBar(),
    );
  }

  Widget getBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 20.0,
      currentIndex: _currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
        BottomNavigationBarItem(icon: Icon(Icons.history), title: Text("history")), 
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("list")),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("setting")), 
      ],
      onTap: setCurrentIndex,
    );
  }

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
