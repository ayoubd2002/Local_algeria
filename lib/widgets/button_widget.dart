import 'package:flutter/material.dart';

class buttonwidget extends StatelessWidget {
  buttonwidget({super.key, required this.title, this.ontap});
  final String title;
  final Function()? ontap;
  final LinearGradient gradient = LinearGradient(
    colors: <Color>[Colors.red, Colors.white, Colors.green],
  );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return gradient.createShader(rect);
      },
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 183, 163, 187)),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
