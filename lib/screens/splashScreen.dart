import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreen/splashscreen.dart';
import '../Arrangements/sizeModification.dart';
import './selectScreen.dart';
import 'isConnection.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  // startTime() async {
  //   var _duration = new Duration(seconds: 3);
  //   return new Timer(_duration, navigationPage);
  // }

  // void navigationPage() {
  //   Navigator.of(context).pushReplacementNamed('HomeScreen');
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   startTime();
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Stack(
      fit: StackFit.expand,
        children: <Widget>[
            new SplashScreen(
                seconds: 4,
                backgroundColor: Colors.lime,
                image: Image.asset('images/logo.png'),
                photoSize:  SizeConfig.blockSizeVertical*30.0,
                title: Text("Welcome to ConversionGuru",style:TextStyle(fontSize: SizeConfig.blockSizeVertical *3.0,color:Colors.deepOrange),),
                loaderColor: Colors.green,
                navigateAfterSeconds: new IsConnection(),
              ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Powered By ConversionGuru', style: TextStyle(decorationColor:Colors.green,fontSize: SizeConfig.blockSizeVertical * 2.5,backgroundColor:Colors.white)),
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                // child: new Image.asset(
                //   'assets/dff.png',
                //   height: 40.0,
                //   fit: BoxFit.scaleDown,
                // ),
              )
            ],
          ),
    // return new Scaffold(
    //   body: Center(
    //     child: new Image.asset("images/logo.png"),
    //   )
    // );
    ],



  //  height: SizeConfig.blockSizeVertical * 20,
  //  width: SizeConfig.blockSizeHorizontal * 50,


      ),
    );
  }
}

