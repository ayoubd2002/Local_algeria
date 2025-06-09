// all place with details1

import 'package:flutter/material.dart';
import 'package:local_algeria/model/allplace_model.dart';
import 'package:local_algeria/model/place_model.dart';
import 'package:local_algeria/screens/dettailsscrenn/detailsscreen1.dart';
import 'package:local_algeria/screens/dettailsscrenn/dettails_screen.dart';
import 'package:local_algeria/widgets/appbar_widget.dart';
import 'package:local_algeria/widgets/recomended3.dart';
import 'package:local_algeria/widgets/recommended2.dart';
import 'package:local_algeria/widgets/recommended_card.dart';

class regions extends StatefulWidget {
  const regions({super.key});

  @override
  State<regions> createState() => _regionsState();
}

class _regionsState extends State<regions> {
  @override
  Widget build(BuildContext context) {
    return appbarwidget(
      implementleading: true,
      titlestring: 'All Places',
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: placess.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext, int index) {
                return Padding(
                  padding: EdgeInsets.all(15),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: recommendedcard3(
                        allplace: placess[index],
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => detailsscreen1(
                                        alplace: placess[index],
                                      )));
                        },
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
