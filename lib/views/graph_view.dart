import 'package:flutter/material.dart';

class Graphscreen extends StatefulWidget {
  const Graphscreen({Key? key}) : super(key: key);

  @override
  State<Graphscreen> createState() => _GraphscreenState();
}

class _GraphscreenState extends State<Graphscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Graph"), centerTitle: true),
      body: Text("graph screen"),
    );
  }
}
