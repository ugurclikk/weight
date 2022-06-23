import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'views/control.dart';
import 'home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));//üst kısmı transpartent yapma
  runApp(Home());
}



/*class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _control = Get.put(controller());//get.find() olabilir ve daha basit
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Obx(
          () => Text("${_control.count}"),
        ),
      ),
    );
  }
}*/