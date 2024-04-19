import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BrandVouchers extends StatelessWidget {
  const BrandVouchers({super.key});
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
              'Brand Vouchers',
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
                            'assets/images/googleplay.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Google Play",
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
                            'assets/images/myntra.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Myntra",
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
                            'assets/images/flipcart.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "FlipCart",
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
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );
  }
}
