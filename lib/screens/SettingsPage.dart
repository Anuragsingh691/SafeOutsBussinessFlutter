import 'package:flutter/material.dart';



class SettingsPage extends StatefulWidget {

  // Person user;
  // Success({this.user});
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (ctx) => EditProfile()));
                // },
                leading: ClipOval(
                  child: CircleAvatar(
                    radius: 25,
                    child: Image.asset(
                      'assets/images/default.png',
                      fit: BoxFit.contain,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                title: Text(
                  'John Doe',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('+918011163850'),
              ),
              ListTile(
                onTap: () { _showlogout();
                },
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
              ListTile(
                onTap: () {

                },
                leading: Icon(Icons.phone),
                title: Text("Change phone no."),
              ),
              ListTile(
                onTap: () {
                  // _launchPrivacy()
                  ;
                },
                leading: Icon(Icons.lock_outline),
                title: Text("Privacy"),
              ),
              ListTile(
                // onTap: () { _launchURL();
                // },
                leading: Icon(Icons.verified_user),
                title: Text("Contact tracing"),
              ),
              ListTile(
                // onTap: () { _launchReview();
                // },
                leading: Icon(Icons.messenger_outlined),
                title: Text("Give feedback"),
              ),
              ListTile(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (ctx) => Notifications()));
                // },
                leading: Icon(Icons.notification_important),
                title: Text("Notification"),
              ),

              // ListTile(
              //   onTap: () { _showlogout();
              //   },
              //   leading: Icon(Icons.logout),
              //   title: Text("Logout"),
              // ),
              // ListTile(
              //   onTap: () {  _showdelete();
              //
              //   },
              //   leading: Icon(Icons.delete),
              //   title: Text("Delete account"),
              // ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 390.0,
                height: 60.0,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),

                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.white),
                  ),
                  color: Colors.teal.withOpacity(0.7),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),

                  elevation: 0.0,
                  onPressed: () async {
                    _showlogout();
                  },

                  child: Text('                        Logout                             ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 390.0,
                height: 60.0,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.redAccent),
                  ),
                  color: Colors.redAccent,
                  elevation: 0,
                  onPressed: ()  {
                    _showdelete();
                  },
                  child: Text('                  Delete account                       ',

                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ],

          ),

        ),

      ),

    );

  }

  // _launchURL() async {
  //   const url = 'https://github.com/Safeouts/Customer-App/blob/master/Link%20to%20Know%20More%20(1).pdf';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  // _launchPrivacy() async {
  //   const url = 'https://github.com/Safeouts/Customer-App/blob/master/PRIVACY_POLICY.md';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  // _launchReview() {
  //   LaunchReview.launch(androidAppId: 'com.safeouts.merchant_app_flutter',
  //       iOSAppId: 'com.safeouts.merchant_app_flutter');
  // }
  _showlogout() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(
            'Logout',
          ),
          content: Text(
            'Are you sure you want to logout',
          ),
          actions: <Widget>[
            FlatButton(
              textColor: Theme.of(context).accentColor,
              // onPressed: () => Navigator.pushAndRemoveUntil(
              //     context,
              //     MaterialPageRoute(builder: (context) => SplashScreen()),
              //         (route) => false),
              child: Text(
                'Yes',
              ),

            ),

            FlatButton(
              textColor: Theme.of(context).accentColor,
              onPressed: () => Navigator.pop(context),
              child: Text(
                'No',
              ),
            ),
          ],
        );
      },
    );
  }
  _showdelete() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(
            'Delete Profile?',
          ),
          content: Text(
            'You will lose all the restaurant data we can not recover them once you deleted',
          ),
          actions: <Widget>[
            FlatButton(
              textColor: Theme.of(context).accentColor,
              // onPressed: () => Navigator.pushAndRemoveUntil(
              // context,
              // MaterialPageRoute(builder: (context) => SplashScreen()),
              // (route) => false),
              child: Text(
                'Yes',
              ),
            ),
            FlatButton(
              textColor: Theme.of(context).accentColor,
              onPressed: () => Navigator.pop(context),
              child: Text(
                'No',
              ),
            ),
          ],
        );
      },
    );
  }
}
