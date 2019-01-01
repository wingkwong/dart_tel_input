import 'package:flutter/material.dart';
import 'package:tel_input/tel_input.dart';

void main() => runApp(TelInputExample());

class TelInputExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
          hintColor: Colors.green,
        ),
        home: Scaffold(
        body: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: TelInput(
                  dialCode: '+852',
                  onChange: (String phoneNumber) => print('phoneNumber: $phoneNumber'),
              ),
            ),
          ),
        )));
  }
}