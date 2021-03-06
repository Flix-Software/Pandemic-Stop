import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/home/user_settings.dart';


class Profile extends StatelessWidget {

  String _username = 'John Doe';

  @override
  Widget build(BuildContext context) {

    void _showSettingsUser(){
      showModalBottomSheet(
          context: context,
          builder: (context){
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
              child: UserSettings(),

            );
          }
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('User Profile'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: ()=>_showSettingsUser(),
              icon: Icon(Icons.settings_applications),
              label: Text('Settings')
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Platform.isIOS?Icons.arrow_back_ios : Icons.add_circle),
          backgroundColor: Colors.redAccent,
          onPressed: () {
            //Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, .9),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 250,
                    color: Colors.grey.shade800,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          height: 90,
                          margin: EdgeInsets.only(top: 60),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey.shade700,
                            child: Image(
                              image: AssetImage('img/rocket.png'),
                            ),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      Text(
                        _username,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      Text(
                        "Colombo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 17),
                        padding: EdgeInsets.all(10),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                      EdgeInsets.only(top: 15, bottom: 5),
                                      child: Text("Contributions",
                                          style: TextStyle(
                                              color: Colors.black))),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 15),
                                      child: Text("12",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                      EdgeInsets.only(top: 15, bottom: 5),
                                      child: Text("Reputation",
                                          style: TextStyle(
                                              color: Colors.black))),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 15),
                                      child: Text("Level 3",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                      padding:
                                      EdgeInsets.only(top: 10, bottom: 5),
                                      child: Text("Country",
                                          style: TextStyle(
                                              color: Colors.black))),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text("Sri Lanka",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      UserInfo(),
                      HealthInfo()
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "User Information",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            leading: Icon(Icons.my_location),
                            title: Text("Location"),
                            subtitle: Text("Colombo, Sri lanka"),
                          ),
                          ListTile(
                            leading: Icon(Icons.email),
                            title: Text("Email"),
                            subtitle: Text("sahan@gmail.com"),
                          ),
                          ListTile(
                            leading: Icon(Icons.phone),
                            title: Text("Phone"),
                            subtitle: Text("+94 775365565"),
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text("About Me"),
                            subtitle: Text(
                                "This is a about me link and you can khow about me in this section."),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HealthInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Health Information",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            leading: Icon(Icons.accessibility_new),
                            title: Text("Age"),
                            subtitle: Text("30"),
                          ),
                          ListTile(
                            leading: Icon(Icons.network_check),
                            title: Text("BMI Level"),
                            subtitle: Text("Normal"),
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text("About Me"),
                            subtitle: Text(
                                "This is a about me link and you can khow about me in this section."),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}