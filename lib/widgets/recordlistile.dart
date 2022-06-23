import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weight/model/records.dart';
import 'package:weight/views/control.dart'; //formatlama ktüphanesi

class RecordListTile extends StatelessWidget {
  Record record;
  RecordListTile({required this.record});
  controller _cont = Get.find(); //daha önce get.put(controller()); ile yarattık simdi bunla tekrar cagırma yapılabilir

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 8),
        child: ListTile(
          leading: Text(DateFormat("EEE,MMM d").format(record.dateTime)),
          title: Center(
              child: Text(
            "${record.weight}",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: [
            IconButton(
              onPressed: () {
                _cont.deleteRecord(record);
              },
              icon: Icon(Icons.delete),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit))
          ]),
        ),
      ),
    );
  }
}
