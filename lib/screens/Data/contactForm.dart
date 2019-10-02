import 'package:flutter/widgets.dart';
import "package:flutter/material.dart";
import 'package:demo_app/Arrangements/sizeModification.dart';
class ContactForm extends StatefulWidget
{
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  var _dropforms= [
   'General','Feedback','Corporate','BulkOrder'
  ]; 
  var _dropformSelected="General";

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    
    // // TODO: implement build
    // String dropdownValue='One';
        
        return new Scaffold(
          
          // resizeToAvoidBottomPadding: false,
                  appBar: AppBar(
                    title: Text("Contact Form"),
                    backgroundColor: Colors.green,
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
                            style:textStyle,
                          // keyboardType: Text(),
                          decoration: InputDecoration(
                            labelStyle:textStyle,
                            labelText: "Full Name",
                            hintText: "Enter your Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            )
                          ),
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                      child: TextField(
                          keyboardType: TextInputType.number,
                           style:textStyle,
                          decoration: InputDecoration(
                             labelStyle:textStyle,
                            labelText: "Mobile",
                            hintText: "Enter your Mobile Number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            )
                          ),
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                      child: TextField(
                          // keyboardType: TextInputType.number,
                           style:textStyle,
                          decoration: InputDecoration(
                             labelStyle:textStyle,
                            labelText: "City",
                            hintText: "Enter your City",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            )
                          ),
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                      child: TextField(
                          // keyboardType: TextInputType.number,
                           style:textStyle,
                          decoration: InputDecoration(
                             labelStyle:textStyle,
                            labelText: "State",
                            hintText: "Enter your State",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            )
                          ),
                        ),
                        ),
          //               DropdownButton<String>(
          //                 value: dropdownValue,
          //                 onChanged: (String newValue)
          //                 {
          //                   setState(() {
          //                    if(newValue!=null)
          //                       dropdownValue=newValue; 
          //                   });
          //                 },
          //                 items: <String>['General','Feedback','Corporate','BulkOrder']
          //                 .map<DropdownMenuItem<String>(
          //                 value: value,
          //                 child: Text(Value),
          //                 );
          // }).tolist());
          //           )

          // DropdownButton<String>(
          //       value: dropdownValue,
          //       icon: Icon(Icons.arrow_downward),
          //       iconSize: 24,
          //       elevation: 16,
          //       style: TextStyle(
          //         color: Colors.deepPurple
          //       ),
          //       underline: Container(
          //         height: 2,
          //         color: Colors.deepPurpleAccent,
          //       ),
          //       onChanged: (String newValue) {
          //         setState(() {
          //           dropdownValue = newValue;
          //         });
          //       },
          //       items: <String>['One', 'Two', 'Free', 'Four']
          //         .map<DropdownMenuItem<String>>((String value) {
          //           return DropdownMenuItem<String>(
          //             value: value,
          //             child: Text(value),
          //           );
          //         })
          //         .toList(),
          //     ),




                  // Padding(
                  //     padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                  //     child:DropdownButton(
                  //                 items: _dropdownValues
                  //                     .map(
                  //                       (value) => DropdownMenuItem(
                  //                           child: Text(value),
                  //                           value: value,
                  //                         )
                  //                         )
                  //                     .toList(),
                  //                 onChanged: (String value) {
                  //                  //
                  //                 },
                  //                 isExpanded: false,
                  //                 hint: Text('Select the category '),
                  //               ),
                  // ),

                Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                      child:DropdownButton<String>(
                      items: _dropforms.map((String dropDownStringItem)
                      {
                         return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),

                         );
                      }).toList(),
                      onChanged: (String newValueSelected){
                        setState(() {
                          this._dropformSelected =newValueSelected;
                        });
                      },
                      value: _dropformSelected,
                      ),
                ),


                Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                      child: TextField(
                        
                         style:textStyle,
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                             labelStyle:textStyle,
                            labelText: "Message",
                            hintText: "Enter Message",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
                            )
                          ),
                        ),
                        ),

                  Padding(
                      padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
                      child:FlatButton(
                        child: Text("Submit"),
                        color: Colors.redAccent,
                        onPressed: ()
                        {   
                          Navigator.pushNamed(context,'HomeScreen');
                          // print("yes");
                          // new SnackBar(
                          //   content: Text("Your form is submitted succesfully"),
                          //   action: SnackBarAction(
                          //     label: 'Undo',
                          //     onPressed: () {
                          //       // Some code to undo the change.
                          //     },
                          //   ),
        
                          // );
                          // Scaffold.of(context).showSnackBar(snackBar);
                        },
                        ),
                    ) ,

                  ],
                ),
              ),
            ),
          );
          }
        } 