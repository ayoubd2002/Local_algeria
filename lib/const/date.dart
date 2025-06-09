import 'package:intl/intl.dart';

extension dateextenxion on DateTime {
  String get getsttartdate {
    DateFormat dateFormat = DateFormat('DD MMM');
    return dateFormat.format(this);
  }
  String get getenddate {
    DateFormat dateFormat = DateFormat('DD MMM yyyy');
    return dateFormat.format(this);
  }
}
