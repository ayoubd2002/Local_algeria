import 'dart:ui';

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData? prefixIcon;


  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter:  ImageFilter.blur(sigmaX: 3, sigmaY:3 ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2), width: 2)

                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(

                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,

                    ),
                      focusedBorder: OutlineInputBorder( // Custom focused border
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color:Color.fromRGBO(219, 180, 0, 100), width: 3), // Apply custom color here
                      ),

                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),

                    hintText: hintText,
                    prefixIcon:Icon(prefixIcon, color:Color.fromRGBO(219, 161, 0, 100),) // Added prefix icon

                  ),
                ),
              ),
            ),
          ),
          // Add more children here if needed
        ],
      ),
    );
  }
}
