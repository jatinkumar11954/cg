import 'package:connectivity/connectivity.dart';
import 'package:flutter/widgets.dart';
import './isConnection.dart';

class HomePage extends StatefulWidget
{
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage>{
  Map _source = {ConnectivityResult.none: false};
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (_source.keys.toList()[0] == ConnectivityResult.none)
     {
      //  show();
     }
    return null;
  }
  
}