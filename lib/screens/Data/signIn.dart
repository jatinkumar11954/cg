import 'package:demo_app/Arrangements/sizeModification.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';



class SignIn extends StatefulWidget
{
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

 void Suck() {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Signed in successfully",style: TextStyle(fontSize:SizeConfig.blockSizeVertical * 2.5),),
          content: new Text("You are successfully signed in you can proceed ",style: TextStyle(fontSize:SizeConfig.blockSizeVertical * 1.7),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            // new FlatButton(
            //   child: new Text("Home"),
            //   onPressed: () {
            //     // Navigator.of(context).pop();
            //    Navigator.pushNamed(context, 'HomeScreen');
            //   },
            // ),
            // new FlatButton(
            //   child: new Text("YES, EXIT"),
            //   onPressed: () {
                
            //     // Navigator.of(context).pop();
            //   },
            // ),
            
          ],
        );
      },
    );
  }


     TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
   return new Scaffold(
                  // resizeToAvoidBottomPadding: false,
                  appBar: AppBar(
                    title: Text("Sign In"),
                    backgroundColor: Colors.orangeAccent,
                  ),
                  body:WillPopScope(
                  onWillPop:()
                  {
                    Navigator.pushNamed(context,'HomeScreen');
                    
                  },
                  child: Container(
                    margin: EdgeInsets.all(SizeConfig.blockSizeVertical*1.5),
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                          child:TextField(
                            keyboardType: TextInputType.number,
                            style:textStyle,
                          // keyboardType: Text(),
                          decoration: InputDecoration(
                            
                            labelStyle:textStyle,
                            labelText: "Mobile ",
                            hintText: "Enter your Mobile Number (user) ",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            ),
                          ),
                          ),
                        ),
                     Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                          child:TextField(
                            style:textStyle,
                          // keyboardType: Text(),
                          decoration: InputDecoration(
                            labelStyle:textStyle,
                            labelText: "Password",
                            hintText: "Enter your Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            ),
                          ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                          child:FlatButton(
                          child: Text("Sign In"),
    
                          color: Colors.green,
                          onPressed: ()
                          {     print("no");
                              //   Scaffold.of(context).showSnackBar(SnackBar(
                              //   content: Text('Successfully registered '),
                              //   duration: Duration(seconds: 3),
                              // )
                              // );
                              Suck();

                          },
                          )
                        ),
                      ],
                    ),
                    ),
                    
                  ),
                    );

  }
}