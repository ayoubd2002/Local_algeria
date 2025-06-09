import 'package:flutter/material.dart';
import 'package:local_algeria/model/allplace_model.dart';

class recommendedcard3 extends StatelessWidget {
  final allplaceinfo allplace;
  final VoidCallback press;
  const recommendedcard3(
      {super.key, required this.allplace, required this.press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(allplace.image))),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              allplace.name,
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
                  allplace.location,
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                SizedBox(
                  width: 180,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Text(
                  '4.5',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
