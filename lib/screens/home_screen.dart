import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:local_algeria/model/place_model.dart';

import 'package:local_algeria/screens/dettailsscrenn/dettails_screen.dart';
import 'package:local_algeria/screens/hote_booking.dart';
import 'package:local_algeria/screens/profile.dart';
import 'package:local_algeria/screens/welcome_screen/regions.dart';
import 'package:local_algeria/widgets/appbar_widget.dart';
import 'package:local_algeria/widgets/category_card.dart';
import 'package:local_algeria/widgets/recommended2.dart';
import 'package:local_algeria/widgets/recommended_card.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return appbarwidget(
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi user name!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'where are you going next?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Spacer(),
            Icon(
              FontAwesomeIcons.bell,
              color: Color.fromARGB(255, 255, 251, 251),
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => RootApp()));
                  },
                  child: Image.asset('assets/pro.png'),
                ))
          ],
        ),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Material(
                elevation: 3,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'search your destination',
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: Colors.black,
                          size: 16,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 18)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //category
              Row(
                children: [
                  Text(
                    'Category',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
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
                                    builder: (context) => hotelbooking()));
                          },
                        ),
                        categorycard(
                          title: 'desert',
                          image: 'assets/deserts.jpeg',
                          press: () {},
                        ),
                        categorycard(
                          title: '(Museums,',
                          image: 'assets/museums.jfif',
                          press: () {},
                        ),
                        categorycard(
                          title: ' cafe&restaurent',
                          image: 'assets/restaurent.jfif',
                          press: () {},
                        ),
                      ],
                      //end category
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //popular places
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular places',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button tap here (e.g., navigate to a different screen)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => regions()));
                    },
                    child: Text('View All'),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                  height: 350,
                  child: ListView.builder(
                      itemCount: places.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 20),
                          child: Row(
                            children: [
                              recommendedcard(
                                place: places[index],
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => detailsscreen(
                                              place: places[index])));
                                },
                              ),
                            ],
                          ),
                        );
                      })),

              SizedBox(
                height: 5,
              ),

              //racently places

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'racently places',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button tap here (e.g., navigate to a different screen)
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => regions()));
                    },
                    child: Text('View All'),
                  )
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: places.length,
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
                        child: recommendedcard2(
                          places: places[index],
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detailsscreen(
                                          place: places[index],
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
        ],
      ),
    );
  }
}
