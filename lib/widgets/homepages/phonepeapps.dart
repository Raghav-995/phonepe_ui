import 'package:flutter/material.dart';

class PhonePeApps extends StatelessWidget {
  const PhonePeApps({super.key});
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Theme.of(context).colorScheme.onPrimary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Apps by PhonePe',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                          size: Size.fromRadius(24),
                          child: Image.asset(
                            'assets/images/stocks.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Stocks IPO",
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                          size: Size.fromRadius(24),
                          child: Image.asset(
                            'assets/images/phonepay.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Business",
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                          size: Size.fromRadius(24),
                          child: Image.asset(
                            'assets/images/pincode.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Pincode",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                          size: Size.fromRadius(24),
                          child: Image.asset(
                            'assets/images/indus.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Indus App",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );
  }
}
