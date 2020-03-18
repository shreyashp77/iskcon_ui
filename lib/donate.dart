import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:toast/toast.dart';

class Donation extends StatefulWidget {
  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  final _fKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Donation',
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
      body: Form(
        key: _fKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter the Amount',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some value!';
                  }
                  return null;
                },
              ),
            ),
            RaisedButton(
              onPressed: () {
                if (_fKey.currentState.validate()) {
                  Toast.show("Thank You So Much!", context,
                      duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

                  Navigator.pop(context);
                }
              },
              child: Text('Donate'),
            ),
          ],
        ),
      ),
    );
  }
}
