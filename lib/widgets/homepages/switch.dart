import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Switches extends StatelessWidget {
  const Switches({super.key});
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
              'Switch',
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
                            'assets/images/metro.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Metro Rail",
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
                            'assets/images/swiggy.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Swiggy",
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
                            'assets/images/tata.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Tata 1mg",
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
