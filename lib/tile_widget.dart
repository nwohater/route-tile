import 'package:flutter/material.dart';

class CustomTileWidget extends StatelessWidget {
  final int number; // Incremental number for the tile
  final String custName;
  final String custAddress;
  final String routeStopType; // Text in the top right corner
  final bool isChecked;

  const CustomTileWidget({
    super.key,
    required this.number,
    required this.custName,
    required this.custAddress,
    required this.routeStopType,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Stack(
        children: [
          ListTile(
            contentPadding:
                const EdgeInsets.all(5), // Remove default ListTile padding
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  custName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  routeStopType,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 200,
                  ),
                  child: Text(
                    softWrap: true,
                    custAddress,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    // Handle checkbox state change
                  },
                ),
              ],
            ),
            onTap: () {
              // Handle tile tap
            },
            leading: CircleAvatar(
              // Use a CircleAvatar for the incremental number
              backgroundColor: Colors.red, // Customize circle color
              child: Text(
                number.toString(),
                style: const TextStyle(
                  color: Colors.white, // Text color
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 0,
          //   right: 5,
          //   child: Container(
          //     padding: const EdgeInsets.all(8),
          //     child: Text(
          //       routeStopType,
          //       style: const TextStyle(
          //         color: Color(0xFF333333),
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   top: 20,
          //   right: 0,
          //   child: Row(
          //     children: [
          //       Checkbox(
          //         value: isChecked,
          //         onChanged: (value) {
          //           // Handle checkbox state change
          //         },
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
