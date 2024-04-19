import 'package:flutter/material.dart';

class AppsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Health Insurance",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
