import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget theDrawer(BuildContext context)
{


  //  TextStyle newStyle = TextStyle(
  //   fontSize: 15,
  //   fontWeight: FontWeight.normal
  // );

  return Drawer(
        child: new ListView(
          children: <Widget>[
            // new DrawerHeader(
              
            //   child: Column(
            //     children: <Widget>[
            //       // new Container(
            //       //   height: 120,
            //        Text("LOGIN",style: TextStyle(),),
            // decoration: BoxDecoration(
                // color: Colors.blue,
              // ),
            //       //  color: Colors.white, fontWeight: FontWeight.normal
            //       // ),
            //     ],
            //   ),
            // ),
             new ListTile(
              // title: new Text("Login/Register",style: newStyle),
              title: new Text("Login/Register"),
              leading: Icon(Icons.lock,color: Colors.black,),
              onTap: () {
                Navigator.pushNamed(context, 'ScreenSelection');
              },
            ),
            new ListTile(
              leading: Icon(Icons.account_box,color:Colors.green),
              title: new Text("My Account"),
              // title: new Text('My Account',style:TextStyle(color:Colors.black),),
              onTap: () {
                Navigator.pushNamed(context,'AccountInfo');
              },
            ),
            // new Divider(),
            new ListTile(
              leading: new Icon(Icons.call,color: Colors.red,),
              title: new Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, "ContactUs");
              },
            ),
            new ListTile(
              
              title: new Text('Live Chat'),
              leading: new Icon(Icons.chat_bubble_outline),
              onTap: () {

              //  var whatsappUrl ="whatsapp://send?phone=$phone";
          canLaunch("whatsapp://send?phone=0919010590693") != null? launch("whatsapp://send?phone=0919010590693"):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
// need to work if it wont work
              },
            ),
            new ListTile(
              leading: new Icon(Icons.edit),
              title: new Text('Contact Form'),
              onTap: () {
                Navigator.pushNamed(context, 'ContactForm');
              },
            ),
            // new Divider(color:Colors.red,),
            new ListTile(
              leading: new Icon(Icons.live_help),
              title: new Text('Help'),
              onTap: () {
                Navigator.pushNamed(context, 'Help');
              },
            ),
             new ListTile(
              title: new Text('Privacy Policy'),
              onTap: () {
                Navigator.pushNamed(context,'Privacy');
              },
            ),
            
          ],
        ),
        );
}