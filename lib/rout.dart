import 'package:flutter/material.dart';

import 'package:local_algeria/screens/hotel.dart';
import 'package:local_algeria/screens/intro_screen.dart';
import 'package:local_algeria/screens/main_app.dart';
import 'package:local_algeria/screens/welcome_screen/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  welcomscreen.routename: (context) => const welcomscreen(),
  introscreen.routename: (context) => const introscreen(),
  mainapp.routname: (context) => const mainapp(),
  hotelscreen.routname: (context) => const hotelscreen(),

};
