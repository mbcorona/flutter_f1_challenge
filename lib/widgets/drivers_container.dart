import 'package:f1_challenge/constants.dart';
import 'package:f1_challenge/pages/drivers_page.dart';
import 'package:flutter/material.dart';

class DriversContainer extends StatelessWidget {
  const DriversContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.width,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, _) {
                  return FadeTransition(
                    opacity: animation,
                    child: const DriversPage(),
                  );
                },
                transitionDuration: duration,
                reverseTransitionDuration: duration,
              ),
            );
          },
          child: Stack(
            children: [
              Hero(
                tag: 'drivers_container',
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const Hero(
                tag: 'drivers',
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      'Drivers',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Hero(
                tag: 'pilot',
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/pilot.png',
                    width: size.width * .8,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}