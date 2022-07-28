import 'package:f1_challenge/widgets/constructors_container.dart';
import 'package:f1_challenge/widgets/drivers_container.dart';
import 'package:f1_challenge/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final headerSize = MediaQuery.of(context).padding.top + 45 + 75;
    return Scaffold(
      body: Stack(
        children: [
          const Hero(
            tag: 'lash',
            child: SizedBox(
              width: 0,
              height: 0,
            ),
          ),
          Positioned(
            top: headerSize,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DriversContainer(size: size),
                  ConstructorsContainer(size: size),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Hero(
                tag: 'header',
                child: Header(isDark: false),
              ),
              _PageTitle(title: 'Standings'),
            ],
          ),
        ],
      ),
    );
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        height: 45,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
      ),
    );
  }
}
