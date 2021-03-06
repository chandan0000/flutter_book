import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// TODO: Add state variables and functions
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const Card1(),
// TODO: Replace with Card2
    const Card2(),

// TODO: Replace with Card3
    Container(color: Colors.blue)
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
        title: Text(
          'Fooderlich',
// 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),

      body: pages[_selectedIndex],
// TODO: Add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
// 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
// TODO: Set selected tab bar
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
// 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
