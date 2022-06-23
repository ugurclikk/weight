import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight/model/records.dart';
import 'package:weight/views/control.dart';
import 'package:weight/widgets/recordlistile.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final controller _controller = Get.put(controller());
  late List<Record> records = _controller.records;
  @override
  Widget build(BuildContext context) {
    return Obx(
      (() => Scaffold(
            // bi değişiklik oldugunda tamamı değişiklik göstersin diye
            appBar: AppBar(actions: [
              IconButton(
                  onPressed: () {
                    _controller.addRecord();
                  },
                  icon: Icon(Icons.add))
            ], title: Text("History"), centerTitle: true),
            body: _controller.records.isEmpty
                ? Center(
                    child: Text("List is empty pls enter a body information"),
                  )
                : ListView(
                    physics: BouncingScrollPhysics() // rahat kaydırma efekti
                    ,
                    children: records
                        .map((element) => RecordListTile(record: element))
                        .toList(),
                  ),
          )),
    );
  }
}
