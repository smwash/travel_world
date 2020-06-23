import 'package:flutter/material.dart';

import '../constants.dart';
import 'homepage.dart';

class WelcomeScreen extends StatelessWidget {
  final List<Color> _colors = [
    Colors.black.withOpacity(1),
    Colors.black.withOpacity(0.9),
    Colors.black.withOpacity(0.8),
    Colors.black.withOpacity(0.7),
    Colors.black.withOpacity(0.6),
    Colors.black.withOpacity(0.5),
    Colors.black.withOpacity(0.4),
    Colors.black.withOpacity(0.1),
    Colors.black.withOpacity(0.05),
    Colors.black.withOpacity(0.025),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'images/canyon.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: _colors),
              ),
            ),
          ),
          Positioned(
            bottom: 220.0,
            left: 30.0,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'The ',
                    style: TextStyle(
                        fontSize: 34.0,
                        color: Colors.white,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat-SemiBold'),
                  ),
                  TextSpan(
                    text: 'best travel\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 34.0,
                        color: kPrimaryColor,
                        letterSpacing: 1.1,
                        fontFamily: 'Montserrat-SemiBold'),
                  ),
                  TextSpan(
                    text: 'in the world',
                    style: TextStyle(
                        fontSize: 34.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.1,
                        fontFamily: 'Montserrat-SemiBold'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Positioned(
            bottom: 150.0,
            left: 30.0,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur\nsed do eiusmod , sed do eiusmod \nlabore et aliqua.',
              style: TextStyle(fontSize: 16.0, color: Colors.white54),
            ),
          ),
          Positioned(
            bottom: 30.0,
            left: 30.0,
            right: 30.0,
            child: GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 22.0, horizontal: 60.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: kFadedPrimary,
                ),
                child: Center(
                  child: Text(
                    'Explore now',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
