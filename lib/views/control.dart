import 'package:get/get.dart';
import 'package:weight/model/records.dart';

class controller extends GetxController {
  int x = 1;
  var records = <Record>[
    /* Record(dateTime: DateTime.now(), weight: 80),
    Record(dateTime: DateTime.now(), weight: 81),
    Record(dateTime: DateTime.now(), weight: 82),
    Record(dateTime: DateTime.now(), weight: 83),
    Record(dateTime: DateTime.now(), weight: 84),*/
  ].obs;
  void addRecord() {
    records.add(
      Record(dateTime: DateTime.now(), weight: x),
    );
    x++;
  }

  void deleteRecord(Record fordel) {
    records.remove(fordel);
  }
}
