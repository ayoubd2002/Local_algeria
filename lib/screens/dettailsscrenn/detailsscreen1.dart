import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:local_algeria/model/allplace_model.dart';
import 'package:local_algeria/model/place_model.dart';

import 'package:local_algeria/screens/dettailsscrenn/topdetails.dart';
import 'package:local_algeria/screens/hote_booking.dart';
import 'package:local_algeria/screens/reviews.dart';

import 'package:local_algeria/widgets/category_card.dart';
import 'package:local_algeria/widgets/recommended_card.dart';

class detailsscreen1 extends StatefulWidget {
  final allplaceinfo alplace;
  const detailsscreen1({super.key, required this.alplace});

  @override
  State<detailsscreen1> createState() => _detailsscreenState();
}

class _detailsscreenState extends State<detailsscreen1> {
  Widget builditemcategory(
      Widget icon, Color color, Function() ontap, String title) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: icon,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
          ),
          SizedBox(
            height: 0,
          ),
          Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            widget.alplace.image,
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
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
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.alplace.name,
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Material(
                                        elevation: 6,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                shape: BoxShape.circle),
                                            child: Center(
                                                child: Icon(
                                              FontAwesomeIcons.bookmark,
                                              size: 18,
                                              color: const Color.fromARGB(
                                                  255, 18, 18, 18),
                                            )),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Material(
                                        elevation: 6,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                shape: BoxShape.circle),
                                            child: Center(
                                                child: Icon(
                                              FontAwesomeIcons.heart,
                                              size: 18,
                                              color: const Color.fromARGB(
                                                  255, 18, 18, 18),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color.fromARGB(255, 133, 38, 31),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    widget.alplace.location,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Top details:',
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.alplace.desc,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 119, 118, 118),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                height: 5,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Duration',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 69, 69, 69),
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '${widget.alplace.days} days',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 41, 40, 40),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'distanse',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 69, 69, 69),
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '${widget.alplace.distance} km',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 41, 40, 40),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'To do:',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              //category********************

                              Container(
                                height: 80,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Row(
                                      children: [
                                        categorycard(
                                          title: 'Hotell',
                                          image: 'assets/hotlei.jpg',
                                          press: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        hotelbooking()));
                                          },
                                        ),
                                        categorycard(
                                          title: 'restaurent',
                                          image: 'assets/reticon.jfif',
                                          press: () {},
                                        ),
                                        categorycard(
                                          title: 'travle guide',
                                          image: 'assets/guid.webp',
                                          press: () {},
                                        ),
                                        categorycard(
                                          title: ' user reviews',
                                          image: 'assets/user.png',
                                          press: () {
                                           
                                          },
                                        ),
                                      ],
                                      //end category
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Top destination  ',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'View all',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 137, 66, 89),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),

                              //top destination
                              Container(
                                  height: 350,
                                  child: ListView.builder(
                                      itemCount: places.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5, right: 20),
                                          child: Row(
                                            children: [
                                              recommendedcard(
                                                place: places[index],
                                                press: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              topdettails(
                                                                  place: places[
                                                                      index])));
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      })),
                              SizedBox(height: 15),
                              MaterialButton(
                                color: Colors.green,
                                minWidth: double.infinity,
                                height: 55,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {},
                                child: Text(
                                  'book trip',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
