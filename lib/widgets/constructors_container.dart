import 'package:f1_challenge/constants.dart';
import 'package:f1_challenge/pages/drivers_page.dart';
import 'package:flutter/material.dart';

class ConstructorsContainer extends StatelessWidget {
  const ConstructorsContainer({
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
                tag: 'constructors_container',
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const Hero(
                tag: 'constructors',
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      'Constructors',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Hero(
                tag: 'constructor',
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/car.png',
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
