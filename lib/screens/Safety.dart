import 'package:flutter/material.dart';



class Safety extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Safety> {
  bool _flutter = false;
  bool _contactless = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              // const Divider(
              //   color: Colors.black12,
              //   height: 20,
              //   thickness: 10,
              //   indent: 1,
              //   endIndent: 1,
              // ),
              ListTile(
                title: Text(
                  'Safety measures',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Card(
                color: Colors.white,
                child: SwitchListTile(
                  title: Text('Employees wearing masks',
                  ),
                  value: _flutter,
                  activeColor: Colors.teal,
                  inactiveTrackColor: Colors.grey,
                  onChanged: (bool value) {
                    setState(() {
                      _flutter = value;
                    });
                  },
                ),
              ),
              Card(
                color: Colors.white,
                child: SwitchListTile(
                  title: Text('Contactless ordering',
                  ),
                  value: _contactless,
                  activeColor: Colors.teal,
                  inactiveTrackColor: Colors.grey,
                  onChanged: (bool value) {
                    setState(() {
                      _contactless = value;
                    });
                  },
                ),
              ),
              Card(
                child:ListTile(
                  leading: Text('Sanitization frequency',),
                  title: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ),

              ListTile(
                title: Text(
                  'Other checks',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Card(
                child:ListTile(
                  title: Text("fkjhgdkfngkdnfkngfndkfgndkjg"),
                ),
              ),
              Card(
                child:ListTile(
                  title: Text("jfdgnkjdnfgkjdnfvkdfnkvndfkvnk"),
                ),
              ),
              Card(
                child:ListTile(
                  title: Text("ndgjdnfjkvndfkgndkjfgkgkgndfk"),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 10,
              ),

              FloatingActionButton(
                   tooltip: 'Increment',
                 child: Icon(Icons.add),
                   backgroundColor: new Color(0xFF00BFA5),
                 ),
              SizedBox(
                height: 20,
              ),

            ],
          ),

        ),

      ),
    );

  }
}

