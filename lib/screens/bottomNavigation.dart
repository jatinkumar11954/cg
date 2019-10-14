import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget
{
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(bottomNavigationBar: BottomNavigationBar(
      items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home'),),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text('Contact us')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Cart')),
        ],
        fixedColor: Colors.deepPurple,
        // onTap: onItemTapped(),
            ),);
          }
        
          // onItemTapped() {
          //   Navigator.pushNamed(context,'HomeScreen');
          //   setState(() {
          //     Null;
          //   });
          // }
}