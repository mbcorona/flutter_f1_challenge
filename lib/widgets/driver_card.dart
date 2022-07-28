import 'package:f1_challenge/models/driver_model.dart';
import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({
    Key? key,
    required this.driver,
    required this.index,
  }) : super(key: key);

  final Driver driver;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (index + 1).toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${driver.name}\n',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: driver.lastName,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(driver.image),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 1.3,
            height: 30,
          ),
          Row(
            children: [
              Chip(
                label: Text(
                  '${driver.pts} pts',
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(
                width: 8,
              ),
              Chip(
                label: Text(
                  driver.team,
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(
                width: 8,
              ),
              const Chip(
                label: Text(
                  'Bio',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
                backgroundColor: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
