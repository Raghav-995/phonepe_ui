import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Check Credit Score",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
