import 'package:flutter/material.dart';
import 'package:local_algeria/widgets/appbar_widget.dart';
import 'package:local_algeria/widgets/button_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class selectdate extends StatelessWidget {
  DateTime? rangstartdate;
  DateTime? rangenddate;

  @override
  Widget build(BuildContext context) {
    return appbarwidget(
        titlestring: 'select date',
        implementleading: true,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              SfDateRangePicker(
                view: DateRangePickerView.month,
                selectionMode: DateRangePickerSelectionMode.range,
                monthViewSettings:
                    DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
                selectionColor: Colors.yellow,
                startRangeSelectionColor: Colors.yellow,
                endRangeSelectionColor: Colors.yellow,
                rangeSelectionColor: Colors.yellow,
                todayHighlightColor: Colors.yellow,
                toggleDaySelection: true,
                onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                  if (args.value is PickerDateRange) {
                    rangstartdate = args.value.startDate;
                    rangenddate = args.value.endDate;
                  } else {
                    rangstartdate = null;
                    rangenddate = null;
                  }
                },
              ),
              buttonwidget(
                title: 'selected',
                ontap: () {
                  Navigator.of(context).pop([rangstartdate, rangenddate]);
                },
              ),
              SizedBox(
                height: 16,
              ),
              buttonwidget(
                title: 'cancle',
                ontap: () {
                  Navigator.of(context).pop([rangstartdate, rangenddate]);
                },
              ),
            ],
          ),
        ));
  }
}
