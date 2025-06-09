import 'package:flutter/material.dart';

class allplaces extends StatefulWidget {
  const allplaces({super.key});

  @override
  State<allplaces> createState() => _allplacesState();
}

class _allplacesState extends State<allplaces> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Material(
          elevation: 6,
          borderRadius: BorderRadius.circular(100),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 86, 4),
                  shape: BoxShape.circle),
              child: Center(
                  child: Icon(
                Icons.arrow_back,
                size: 18,
                color: Colors.white,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
