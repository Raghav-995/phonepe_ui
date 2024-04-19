import 'package:flutter/material.dart';

class WealthPage extends StatefulWidget {
  @override
  _WealthPageState createState() => _WealthPageState();
}

class _WealthPageState extends State<WealthPage> {
  Widget myNewButton(String myImage) {
    return CircleAvatar(
      backgroundImage: AssetImage(myImage),
      radius: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Welcome to Wealth Page",
      style: Theme.of(context).textTheme.titleLarge,
    ));
  }
}
