import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RechargePay extends StatelessWidget {
  const RechargePay({super.key});
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Theme.of(context).colorScheme.onPrimary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Recharge & Pay Bills",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 15.0),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color:
                                Theme.of(context).colorScheme.onInverseSurface),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'My Bills',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          //*********************** Rows **************************
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.mobile,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Mobile \nRecharge",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.towerBroadcast,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "DTH",
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidLightbulb,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Electricity",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.gamepad,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Buy \nGames",
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),

          //************************** Second Row ******************************
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.houseCircleCheck,
                        color: Theme.of(context).colorScheme.primary,
                        size: 32,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Rent \nPayment",
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.indianRupeeSign,
                        color: Theme.of(context).colorScheme.primary,
                        size: 32,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Loan \nRepayment",
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.gasPump,
                        color: Theme.of(context).colorScheme.primary,
                        size: 32.0,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Gas Bill",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Theme.of(context).colorScheme.primary),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.greaterThan,
                            size: 12.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "See All",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
