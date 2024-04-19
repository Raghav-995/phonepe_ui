import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<Map<String, Object>> Transactions = [
    {
      'id': 1,
      'paid_to': 'Indian Oil',
      'name': 'Indian Gas Cylinder',
      'amount': 123,
      'date': '12/05/2024',
      'status': 'success',
      'type': 'send'
    },
    {
      'id': 2,
      'paid_to': 'Airtel',
      'name': 'Airtel Payments Bank',
      'amount': 543,
      'date': '12/05/2023',
      'status': 'success',
      'type': 'send'
    },
    {
      'id': 3,
      'paid_to': 'DTH',
      'name': 'DTH',
      'amount': 123,
      'date': '14/05/2024',
      'status': 'success',
      'type': 'send'
    },
    {
      'id': 4,
      'paid_to': 'Friend',
      'name': 'Friend',
      'amount': 1000,
      'date': '02/04/2024',
      'status': 'failed',
      'type': 'send'
    },
    {
      'id': 5,
      'paid_to': 'Reward',
      'name': 'Reward',
      'amount': 20,
      'date': '12/04/2023',
      'status': 'success',
      'type': 'received'
    },
    {
      'id': 6,
      'paid_to': 'Myntra',
      'name': 'Myntra Shopping Mall',
      'amount': 1500,
      'date': '12/05/2024',
      'status': 'success',
      'type': 'send'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: Transactions.map((transaction) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  transaction['type'] == 'send'
                                      ? Icon(Icons.arrow_forward)
                                      : Icon(Icons.arrow_back)
                                ],
                              ),
                            ),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                transaction['type'] == 'send'
                                    ? Text(
                                        'Paid To',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      )
                                    : Text(
                                        'Payment From',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                SizedBox(height: 2.0),
                                Text(
                                  transaction['name'].toString(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ]),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              children: [
                                Text('\$' + transaction['amount'].toString())
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(transaction['date'].toString()),
                          transaction['type'] == 'send'
                              ? Row(
                                  children: [
                                    Text('Debited from'),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: Colors.blueAccent),
                                      child: Icon(
                                        Icons.house,
                                        size: 20.0,
                                      ),
                                    )
                                  ],
                                )
                              : Row(
                                  children: [
                                    Text('Failed'),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            color: Colors.redAccent),
                                        child: Icon(
                                          Icons.dangerous_outlined,
                                          size: 20.0,
                                        ))
                                  ],
                                )
                        ],
                      )
                    ],
                  ),
                )),
          );
        }).toList(),
      ),
    );
  }
}
