import 'package:flutter/material.dart';

import 'package:local_algeria/screens/intro_screen.dart';
import 'dart:async';

import 'package:local_algeria/screens/loginScreen.dart';

class welcomscreen extends StatefulWidget {
  const welcomscreen({super.key});
  static String routename = '/welcome';

  @override
  State<welcomscreen> createState() => _welcomscreenState();
}

class _welcomscreenState extends State<welcomscreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    final LinearGradient gradient = LinearGradient(
      colors: <Color>[Colors.red, Colors.white, Colors.green],
    );

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/alg.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/flag.png',
                          height: 90,
                          width: 90,
                        ),
                        ShaderMask(
                          shaderCallback: (Rect rect) {
                            return gradient.createShader(rect);
                          },
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset(
                          'assets/flag.png',
                          height: 90,
                          width: 90,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
