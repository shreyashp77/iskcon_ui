import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast/toast.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.black),
          textScaleFactor: 1.2,
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: FaIcon(Icons.arrow_back_ios),
          color: Colors.black,
          iconSize: 35,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Card(
            elevation: 0.7,
            child: Column(
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: '9876543210'));
                    Toast.show("Number copied to clipboard", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                  },
                  title: Text('Phone Number : '),
                  subtitle: Text('9876543210'),
                  trailing: Icon(Icons.phone),
                ),
              ],
            ),
          ),
          Card(
            elevation: 0.7,
            child: Column(
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: 'my@email.com'));
                    Toast.show("Email copied to clipboard", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                  },
                  title: Text('Email : '),
                  subtitle: Text('my@email.com'),
                  trailing: Icon(Icons.alternate_email),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
