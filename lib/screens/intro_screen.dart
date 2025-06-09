import 'dart:async';

import 'package:flutter/material.dart';
import 'package:local_algeria/helpers/assets_helpers.dart';
import 'package:local_algeria/screens/main_app.dart';
import 'package:local_algeria/widgets/button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class introscreen extends StatefulWidget {
  const introscreen({super.key});
  static String routename = 'intro_screen';
  @override
  State<introscreen> createState() => _introscreenState();
}

class _introscreenState extends State<introscreen> {
  final PageController pageController = PageController();
  final StreamController<int> pagesteamcontroler =
      StreamController<int>.broadcast();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      pagesteamcontroler.add(pageController.page!.toInt());
    });
  }

  Widget builditm(String image, String title, String description,
      AlignmentGeometry alignment) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: alignment,
            child: Image.asset(
              image,
              height: 400,
              width: 350,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 4,
                      color: const Color.fromARGB(255, 42, 40, 40)),
                ),
                Text(
                  description,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                      height: 1.6),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              builditm(
                  assethelper.hotel,
                  'Bokk Hotel',
                  'hello we are in the service an welcom any time',
                  Alignment.centerRight),
              builditm(
                  assethelper.hotel,
                  'Bokk Hotel',
                  'hello we are in the service an welcom any time',
                  Alignment.center),
              builditm(
                  assethelper.hotel,
                  'Bokk Hotel',
                  'hello we are in the service an welcom any time',
                  Alignment.centerLeft),
            ],
          ),
          Positioned(
              left: 15,
              right: 15,
              bottom: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          dotWidth: 10,
                          dotHeight: 10,
                          dotColor: Color.fromARGB(255, 15, 79, 2)),
                    ),
                  ),
                  StreamBuilder<Object>(
                      initialData: 0,
                      stream: pagesteamcontroler.stream,
                      builder: (context, snapshot) {
                        return Expanded(
                            flex: 4,
                            child: buttonwidget(
                              title: snapshot.data != 2 ? 'Next' : 'Get Start',
                              ontap: () {
                                if (snapshot.data != 2) {
                                  pageController.nextPage(
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.easeIn);            
                                } else if(snapshot.data ==2) {   
                                      Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              mainapp()));
                                }
                              },
                            ));
                      }),
                ],
              ))
        ],
      ),
    );
  }
}
