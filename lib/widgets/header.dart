
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.isDark,
  }) : super(key: key);

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          height: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/f1.png',
                height: 15,
              ),
              Icon(
                Icons.menu,
                color: isDark ? Colors.black : Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}