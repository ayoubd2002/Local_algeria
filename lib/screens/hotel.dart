import 'package:flutter/material.dart';
import 'package:local_algeria/model/hotel_model.dart';
import 'package:local_algeria/widgets/appbar_widget.dart';

class hotelscreen extends StatefulWidget {
  const hotelscreen({super.key});
  static const String routname = '/hotel';

  @override
  State<hotelscreen> createState() => _hotelscreenState();
}

class _hotelscreenState extends State<hotelscreen> {
  final List<hotelmodel> listhotel = [
    hotelmodel(4, 100,
        location: 'alger',
        hotelname: 'hotelname',
        hotelimage: 'assets/hotel.jfif',
        desc: 'hhhh',
        distance: 4,
        price: 200),
    hotelmodel(4, 100,
        location: 'alger',
        hotelname: 'hotelname',
        hotelimage: 'assets/hotel.jfif',
        desc: 'hhhh',
        distance: 4,
        price: 200),
    hotelmodel(4, 100,
        location: 'alger',
        hotelname: 'hotelname',
        hotelimage: 'assets/hotel.jfif',
        desc: 'hhhh',
        distance: 4,
        price: 200),
  ];
  @override
  Widget build(BuildContext context) {
   return appbarwidget(
    titlestring: 'Hotel',
      child: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
