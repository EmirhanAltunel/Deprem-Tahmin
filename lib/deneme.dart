import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: TableLayout(),
    );
  }
}

class TableLayout extends StatefulWidget {
  @override
  _TableLayoutState createState() => _TableLayoutState();
}

class _TableLayoutState extends State<TableLayout> {
  List<List<dynamic>> data = [];
  loadAsset() async {
    final myData =
        await rootBundle.loadString("lib/assets/elazig_muhtemel_deprem.csv");
    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);
    print(csvTable);
    data = csvTable;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFfffcf2),
          child: Icon(
            Icons.refresh,
            color: Colors.black,
          ),
          onPressed: () async {
            await loadAsset();
            //print(data);
          }),
      appBar: AppBar(
        title: const Text(
          "Deprem Tahmin ",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFFfffcf2),
        automaticallyImplyLeading: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Anasayfa()));
            }),
      ),
      body: Center(
        child: Container(
          height: size.height * 0.8,
          width: size.width * 0.9,
          child: SingleChildScrollView(
            child: Table(
              columnWidths: {
                0: FixedColumnWidth(10.0),
                1: FixedColumnWidth(20.0),
              },
              border: TableBorder.all(width: 1.0),
              children: data.map((item) {
                return TableRow(
                    children: item.map((row) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        row.toString(),
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  );
                }).toList());
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
