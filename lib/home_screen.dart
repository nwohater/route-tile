import 'package:flutter/material.dart';
import 'package:routetile/another_tile.dart';
import 'package:routetile/tile_widget.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  const [
          ICRouteTile(
            custName: 'Target #3422',
            number: 1,
            custAddress: '1137 Foothill Blvd. Upland, CA 91786',
            routeStopType: 'Regular',
            isChecked: true,
          ),
          ICRouteTile(
            custName: 'Wal-Mart #2141',
            number: 2,
            custAddress: '7716 Valle Vista Dr. Rancho Cucamonga, CA 91730',
            routeStopType: 'Regular',
            isChecked: false,
          ),
          ICRouteTile(
            custName: 'Bounce-o-Matic #10',
            number: 3,
            custAddress: '10704 Foothill Blvd. Ontario, CA 91762',
            routeStopType: 'Regular',
            isChecked: false,
          ),
          ICRouteTile(
            custName: 'Chevron #10421',
            number: 4,
            custAddress: '8902 Old Crank Road. Upland, CA 91786',
            routeStopType: 'Regular',
            isChecked: false,
          ),
          ICRouteTile(
            custName: 'Obesity Buffet #22',
            number: 5,
            custAddress: '7839 Pig Farm Road. Rancho Cucamonga, CA 91730',
            routeStopType: 'EDI',
            isChecked: false,
          ),
          ICRouteTile(
            custName: 'The Sandwich Shoppe #09',
            number: 6,
            custAddress: '9092 Tuna Road. Suite #200, Ontario, CA 91762',
            routeStopType: 'Supply',
            isChecked: false,
          ),
        ],
      )
    );
  }
}
