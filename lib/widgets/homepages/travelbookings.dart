import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelBooking extends StatelessWidget {
  const TravelBooking({super.key});
  Widget build(BuildContext context) {
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
              'Travel Bookings',
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
                    Icon(
                      Icons.flight_land_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Flight",
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
                      Icons.bus_alert_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Bus",
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
                      FontAwesomeIcons.train,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32.0,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Train",
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
                      FontAwesomeIcons.hotel,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32.0,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Hotels",
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
