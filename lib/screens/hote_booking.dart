import 'package:flutter/material.dart';
import 'package:local_algeria/const/date.dart';
import 'package:local_algeria/helpers/assets_helpers.dart';
import 'package:local_algeria/screens/select_date.dart';

import 'package:local_algeria/widgets/appbar_widget.dart';
import 'package:local_algeria/widgets/button_widget.dart';
import 'package:local_algeria/widgets/item_booking.dart';

class hotelbooking extends StatefulWidget {
  const hotelbooking({
    super.key,
  });

  @override
  State<hotelbooking> createState() => _hotelbookingState();
}

class _hotelbookingState extends State<hotelbooking> {
  String? dateselected;
  @override
  Widget build(BuildContext context) {
    return appbarwidget(
        implementleading: true,
        titlestring: 'Hotel booking',
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50 * 2,
              ),
              itembooking(
                icon: assethelper.location,
                title: 'destenation',
                description: 'annaba',
                ontap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              StatefulBuilder(builder: (context, setState) {
                return itembooking(
                  icon: assethelper.date,
                  title: 'select time',
                  description: dateselected ?? '1-1-2024',
                  ontap: () async {
                    final result = await Navigator.push(context,
                        MaterialPageRoute(builder: (context) => selectdate()));
                    if (!(result as List<DateTime?>)
                        .any((element) => element == null)) {
                      dateselected =
                          '${result[0]?.getsttartdate}-${result[1]?.getenddate}';
                      setState(() {});
                    }
                  },
                );
              }),
              SizedBox(
                height: 20,
              ),
              itembooking(
                icon: assethelper.location,
                title: 'gusst and room',
                description: 'description',
                ontap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              buttonwidget(
                title: 'search',
                ontap: () {},
              )
            ],
          ),
        ));
  }
}
