import 'package:flutter/material.dart';
import 'package:local_algeria/helpers/color_const.dart';

class appbarwidget extends StatelessWidget {
  const appbarwidget(
      {super.key,
      required this.child,
      this.title,
      this.implementleading = false,
      this.titlestring,
      this.implementtraling = false});

  final Widget child;
  final Widget? title;
  final String? titlestring;
  final bool implementleading;
  final bool implementtraling;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 170,
            child: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 80,
              backgroundColor: Colors.white,
              title: title ??
                  Row(
                    children: [
                      if (implementleading)
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.white),
                          padding: EdgeInsets.all(15),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                titlestring ?? '',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      if (implementtraling)
                        ElevatedButton(
                          onPressed: () {
                            // Handle button tap here (e.g., navigate to a different screen)
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.menu,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                    ],
                  ),
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: gradients.defaultgradientbackground,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(40))),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 130),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: child,
          )
        ],
      ),
    );
  }
}
