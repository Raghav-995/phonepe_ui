import 'package:flutter/material.dart';
import 'package:phonepe_ui/widgets/homepages/brandvouchers.dart';
import 'package:phonepe_ui/widgets/homepages/insurance.dart';
import 'package:phonepe_ui/widgets/homepages/phonepeapps.dart';

import 'package:phonepe_ui/widgets/homepages/rechargepay.dart';
import 'package:phonepe_ui/widgets/homepages/switch.dart';
import 'package:phonepe_ui/widgets/homepages/transfermoney.dart';
import 'package:phonepe_ui/widgets/homepages/travelbookings.dart';
import 'package:phonepe_ui/widgets/homepages/viewoffers.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10.0),
            //SizedBox(
            //height: double.infinity,

//*********************** Main List View **********************
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                  child: Image.asset(
                    'assets/images/ads.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                const TransferMoney(),
                SizedBox(
                  height: 8.0,
                ),
                const ViewOffers(),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: RadialGradient(colors: [
                        Theme.of(context).colorScheme.onPrimary,
                        Theme.of(context).colorScheme.onPrimary
                      ])),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/upi.png',
                          height: 40.0,
                          width: 120.0,
                        ),
                        Text('PIN-less Payments'),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Theme.of(context)
                                    .colorScheme
                                    .onInverseSurface),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Try Now',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ))),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const RechargePay(),
                const SizedBox(
                  height: 8.0,
                ),
                Insurance(),
                const SizedBox(
                  height: 8.0,
                ),
                TravelBooking(),
                const SizedBox(
                  height: 8.0,
                ),
                Switches(),
                const SizedBox(
                  height: 8.0,
                ),
                BrandVouchers(),
                const SizedBox(
                  height: 8.0,
                ),
                PhonePeApps(),
                SizedBox(
                  height: 50.0,
                ),
              ],
            )));
  }
}
