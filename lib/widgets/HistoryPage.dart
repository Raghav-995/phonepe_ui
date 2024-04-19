import 'package:flutter/material.dart';
import 'package:phonepe_ui/widgets/payment.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Payment(),
    );
  }
}
