import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class addrecord extends StatefulWidget {
  const addrecord({Key? key}) : super(key: key);

  @override
  State<addrecord> createState() => _addrecordState();
}

class _addrecordState extends State<addrecord> {
  DateTime _dateTime = DateTime.now();
  int slide = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new record"),
      ),
      body: Column(children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(children: [
              Icon(FontAwesomeIcons.weightScale),
              SizedBox(width: 50),
              Stack(alignment: Alignment.bottomCenter, children: [
                NumberPicker(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.grey)),
                    step: 1,
                    itemHeight: 50,
                    itemCount: 3,
                    itemWidth: 80,
                    axis: Axis.horizontal,
                    minValue: 20,
                    maxValue: 200,
                    value: slide,
                    onChanged: (value) {
                      setState(() {
                        slide = value;
                      });
                    }),
                Icon(
                  FontAwesomeIcons.chevronUp,
                  size: 16,
                )
              ])
            ]),
          ),
        ),
        GestureDetector(
          onTap: () async {
            var initdate = DateTime.now();
            _dateTime = (await showDatePicker(
                    builder: (context, child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                            colorScheme: ColorScheme(
                          brightness: Brightness.light,
                          primary: Colors.black87,
                          onPrimary: Colors.white,
                          secondary: Colors.yellow,
                          onSecondary: Colors.brown,
                          error: Colors.red,
                          onError: Colors.orange,
                          background: Colors.blueAccent,
                          onBackground: Colors.blueGrey,
                          surface: Colors.blue,
                          onSurface: Colors.black26,
                        )),
                        child: child ?? Text(""),
                      );
                    },
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: initdate.subtract(Duration(days: 365)),
                    lastDate: initdate.add(Duration(days: 30)))) ??
                _dateTime;

            setState(() {});
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.calendar,
                    size: 40,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(DateFormat("EEE,MMM d").format(_dateTime!)),
                ],
              ),
            ),
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Save Record"),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              primary: Colors.black),
        )
      ]),
    );
  }
}
