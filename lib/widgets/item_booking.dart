import 'package:flutter/material.dart';

class itembooking extends StatelessWidget {
  const itembooking(
      {super.key,
      required this.icon,
      required this.title,
      required this.description,
      this.ontap});
  final String icon;
  final String title;
  final String description;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 209, 207, 207),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Row(children: [
          Image.asset(
            icon,
            width: 50,
            height: 50,
            
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(description),
            ],
          )
        ]),
      ),
    );
  }
}
