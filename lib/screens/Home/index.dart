import 'package:billma/components/Pages/GenericPage.dart';
import 'package:billma/screens/Bills/BillsPage.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({ Key key }) : super(key: key);

  @override
  HomeScreenState createState() => new HomeScreenState();
  
}

class HomeScreenState extends State<HomeScreen>{

  int _selectedIndex = 0;

  final List<GenericPage> _children = [
    new BillsPage(pageName:"Bills"),
    new GenericPage(pageName: "Account"),
    new GenericPage(pageName: "History"),
    new GenericPage(pageName: "Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      appBar: _children[_selectedIndex].getAppBar(),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.receipt), title: Text('Bills')),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), title: Text('Account')),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), title: Text('History')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );

    return scaffold;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}