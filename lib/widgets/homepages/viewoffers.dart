import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewOffers extends StatelessWidget {
  const ViewOffers({super.key});
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 80.0,
          width: 120.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Theme.of(context).colorScheme.onSecondary),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.wallet),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Phonpe Wallet',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80.0,
          width: 120,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: RadialGradient(colors: [
                  Theme.of(context).colorScheme.onSecondary,
                  Theme.of(context).colorScheme.onSecondary,
                ])),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.gift),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Rewards',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80.0,
          width: 120.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: RadialGradient(colors: [
                  Theme.of(context).colorScheme.onSecondary,
                  Theme.of(context).colorScheme.onSecondary,
                ])),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.bullhorn),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Refer & Get \$2',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
