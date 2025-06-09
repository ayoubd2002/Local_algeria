import 'package:flutter/material.dart';
import 'package:local_algeria/model/place_model.dart';

class recommendedcard extends StatelessWidget {
  final placeinfo place;
  final VoidCallback press;
  const recommendedcard({
    super.key,
    required this.place,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 5,
        child: Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(place.image))),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  place.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 133, 38, 31),
                    ),
                    Text(
                      place.location,
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
