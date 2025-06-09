import 'package:flutter/material.dart';

class categorycard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;
  const categorycard({
    super.key,
    required this.title,
    required this.image,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.all(Radius.circular(100)),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Row(children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
