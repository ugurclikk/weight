import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight/addrecord.dart';
import 'package:weight/views/graph_view.dart';
import 'package:weight/views/history.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //getx çalışması için
      home: Scaffold(
        body: History(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.to(addrecord());
          },
        ),
      ),
    );
  }
}
