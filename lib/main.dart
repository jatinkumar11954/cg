import 'package:demo_app/screens/Data/Account.dart';
import 'package:demo_app/screens/Data/Register.dart';
import 'package:demo_app/screens/Data/contactForm.dart';
import 'package:demo_app/screens/bottomNavigation.dart';
import 'package:demo_app/screens/cart.dart';
import 'package:demo_app/screens/help.dart';
import 'package:demo_app/screens/privacy.dart';
import 'package:demo_app/screens/splashScreen.dart';
import 'package:demo_app/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/homescreen.dart';
import './Screens/isConnection.dart';
import './screens/Data/CheckingData.dart';
import './screens/selectScreen.dart';
import './screens/Data/signIn.dart';
import './screens/contactUs.dart';
import './screens/splashScreen.dart';

// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() { SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitUp,]
    );
  // runApp(new myapp());
  runApp(new app());
}

class app extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Splash(),
    theme: ThemeData(
      primaryColor: Colors.indigo,
      backgroundColor: Colors.grey,
    ),
    routes: <String, WidgetBuilder>{
     'HomeScreen': (BuildContext context) => new HomeScreen(),
     'CheckData': (BuildContext context) => new CheckData(),
     'ScreenSelection':(BuildContext context) => new SelectScreen(),
     'Register':(BuildContext context) => new Register(),
     'ContactForm':(BuildContext context) => new ContactForm(),
    //  'BottomNavigation':(BuildContext context) => new BottomNavigation(),
     'SignIn':(BuildContext context) => new SignIn(),
     'ContactUs':(BuildContext context) => new ContactUs(),
    //  'Test':(BuildContext context) => new Test(),
       'Cart':(BuildContext context) => new Cart(), 
       'AccountInfo':(BuildContext context) => new AccountInfo(),
        'Help':(BuildContext context) => new Help(),
        'Privacy':(BuildContext context) => new Privacy(),
    },
  );
  }

}