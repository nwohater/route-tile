import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ICRouteTile extends StatelessWidget {
  const ICRouteTile({super.key, required this.number, required this.custName, required this.custAddress, required this.routeStopType, required this.isChecked});

  final int number; // Incremental number for the tile
  final String custName;
  final String custAddress;
  final String routeStopType; // Text in the top right corner
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.25,
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(12),
              onPressed: ((context) {
                //delete
              }),
              backgroundColor: Colors.orange.shade700,
              foregroundColor: Colors.white,
              icon: Icons.info_outline_rounded,

            ),
          ]
      ),
      child: Card(
        color: Colors.blue,
        elevation: 25,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      // if isChecked = true then color = green else color = red
                      backgroundColor: isChecked ? Colors.green : Colors.red, // Customize circle color
                      child: Text(
                        number.toString(),
                        style: const TextStyle(
                          color: Colors.white, // Text color
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        custName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        custAddress,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      routeStopType,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Checkbox(
                      value: isChecked,
                      checkColor: Colors.black,
                      activeColor: Colors.grey,
                      onChanged: (value) {
                        // Handle checkbox state change
                      },
                    ),
                  ],
                ),
              ],
          ),
        ),
      ),
    );
  }
}
