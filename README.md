
# App
changed some content from preious version<br>
it has a feature in which when a call button is pressed in the contact us page<br>
it directly calls to the defined phone number<br>
the code is <br>
launch("tel:919010590693"),<br>
But for the call to proceed +91 is the code<br>
so by using the<b> escape sequence</b> we can add any character in the flutter and in all basic programming languages<br>
The escape Sequence is "/"<br>
  So by using <br>
  launch("tel:/+919010590693"),<br>
  we can add the character<br>
     <br><br>
     <h3>Other Important change<h3><br>
     some apps are desgned for portrait mode <br>
     when they are rotated to landscape mode the screen padding changes and app will look ugly with error of pixels<br>
     so by using this cod ein the main method of the main.dart file we can eradicate that error<br>
      SystemChrome.setPreferredOrientations([<br>
    DeviceOrientation.portraitUp,<br>
    DeviceOrientation.portraitUp,]<br>
    This will make the app to be in portrait mode and wll not rotate to landscape jus by setting both to <b>portraitUp</b>


<br><br>
<p>If there is no internet then by addign a button go to setting we can jump from our application to settings </p>
Where we can check our wifi or data connection <br>
But to this to happen we have to import this file and also <br>
import 'package:system_setting/system_setting.dart';<br>
set the dependencies in the pubspec.yaml file as<br>
system_setting: ^0.1.3<br>
After setting the packages will be downloaded <br>
We can set the target as WIFI we will rediect to wifi setting but to set no target we can edit the system_setting.dart <br>
by setting <br>
case SettingTarget.Mobilenetwork:<br>
        arg = 'mobilenetwork';<br>
        break;       at line no.30<br>
        and by adding <br>
        enum SettingTarget { WIFI, BLUETOOTH, NOTIFICATION, LOCATION,Mobilenetwork  } at line no. 5<br><br>
and in the isconnection.dart file <br>
we can use<br><br>
 RaisedButton(<br>
             child: Text("Go to Settings"),<br>
             color: Colors.green,<br>
             onPressed: ()<br>
             {<br>
                 <b>SystemSetting.goto(SettingTarget.Mobilenetwork);</b><br>
             },<br>
                 )<br>
Also can change the target to wifi or other...




     