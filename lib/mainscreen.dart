import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'deneme.dart';

class Anasayfa extends StatefulWidget {
  Anasayfa({Key? key}) : super(key: key);

  @override
  AnasayfaState createState() => AnasayfaState();
}

class AnasayfaState extends State<Anasayfa> {
  List<List<dynamic>> data = [];

  loadAsset() async {
    final myData =
        await rootBundle.loadString("lib/assets/elazig_deprem_v3.csv");
    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);

    data = csvTable;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Color(0xFFccc5b9),
        appBar: AppBar(
          title: const Text(
            "Deprem Tahmin ",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xFFfffcf2),
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            labelColor: Color(0xffEB5E28),
            unselectedLabelColor: Color(0xFF403d39),
            indicatorWeight: 3,
            indicatorColor: Color(0xffEB5E28),
            isScrollable: true,
            tabs: [
              /*Tab(
                text: ("İstanbul"),
              ),
              Tab(
                text: ("Malatya"),
              ),*/
              Tab(
                text: ("Elazığ"),
              ),
              /* Tab(
                text: ("Bingöl"),
              ),
              Tab(
                text: ("Adıyaman"),
              ),*/
            ],
          ),
        ),
        body: TabBarView(
          children: [
            /*Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Color(0xFF403d39),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Center(
                          child: Text(
                        "Geçmiş Depremler",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.0),
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.8,
                          color: Color(0xFFfffcf2),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.1,
                            child: Image.asset("lib/assets/maps.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.8,
                      //color: Colors.red,
                      child: Center(
                          child: Text(
                        "Tahmini deprem aralığı:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(size.height * 0.02),
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.8,
                          color: Color(0xffEB5E28),
                        ),
                      ),
                      Container(
                        height: size.height * 0.08,
                        width: size.width * 0.13,
                        // color: Colors.black,
                        child: Image.asset("lib/assets/unlem.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Color(0xFF403d39),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Center(
                          child: Text(
                        "Geçmiş Depremler",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.0),
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.8,
                          color: Color(0xFFfffcf2),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.1,
                            child: Image.asset("lib/assets/maps.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.width * 0.01),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.8,
                      //color: Colors.red,
                      child: Center(
                          child: Text(
                        "Tahmini deprem aralığı:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(size.height * 0.02),
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.8,
                          color: Color(0xffEB5E28),
                        ),
                      ),
                      Container(
                        height: size.height * 0.08,
                        width: size.width * 0.13,
                        // color: Colors.black,
                        child: Image.asset("lib/assets/unlem.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),*/
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Color(0xFF403d39),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Center(
                          child: Text(
                        "Geçmiş Depremler",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.0),
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.8,
                          color: Color(0xFFfffcf2),
                          child: SingleChildScrollView(
                            child: DataTable(
                              columns: [
                                DataColumn(
                                  label: Text("Tarih"),
                                ),
                                DataColumn(
                                  label: Text("Büyüklük"),
                                )
                              ],
                              rows: [
                                DataRow(cells: [
                                  DataCell(Text("27.12.2020")),
                                  DataCell(Text("5.3"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("19.03.2020")),
                                  DataCell(Text("5"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("25.01.2020")),
                                  DataCell(Text("5.1"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("24.01.2020")),
                                  DataCell(Text("6.8"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("4.04.2019")),
                                  DataCell(Text("5.2"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("23.06.2011")),
                                  DataCell(Text("5.4"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("24.03.2010")),
                                  DataCell(Text("5.1"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("8.03.2010")),
                                  DataCell(Text("5.1"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("8.03.2010")),
                                  DataCell(Text("5.6"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("8.03.2010")),
                                  DataCell(Text("6.1"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("21.02.2007")),
                                  DataCell(Text("5.6"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("11.08.2004")),
                                  DataCell(Text("5.6"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("12.09.1979")),
                                  DataCell(Text("5.4"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("25.03.1977")),
                                  DataCell(Text("5.2"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("18.08.1948")),
                                  DataCell(Text("5.4"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("8.02.1930")),
                                  DataCell(Text("5.4"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("18.08.1910")),
                                  DataCell(Text("5.4"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("1.01.1904")),
                                  DataCell(Text("5.4"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("01/01/1875")),
                                  DataCell(Text("6.1"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("01/01/1874")),
                                  DataCell(Text("6.1"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("22/07/1867")),
                                  DataCell(Text("5.7"))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("01/05/1789")),
                                  DataCell(Text("6.9"))
                                ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.1,
                            child: Image.asset("lib/assets/maps.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.8,
                      //color: Colors.red,
                      child: Center(
                          child: Text(
                        "",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(size.height * 0.02),
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.8,
                          color: Color(0xffEB5E28),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffEB5E28),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TableLayout()));
                            },
                            child: Text("Deprem Tahmin"),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.08,
                        width: size.width * 0.13,
                        child: Container(
                          // color: Colors.black,
                          child: Image.asset("lib/assets/unlem.png"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Color(0xFF403d39),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Center(
                          child: Text(
                        "Geçmiş Depremler",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.0),
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.8,
                          color: Color(0xFFfffcf2),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.1,
                            child: Image.asset("lib/assets/maps.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.8,
                      //color: Colors.red,
                      child: Center(
                          child: Text(
                        "Tahmini deprem aralığı:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(size.height * 0.02),
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.8,
                          color: Color(0xffEB5E28),
                        ),
                      ),
                      Container(
                        height: size.height * 0.08,
                        width: size.width * 0.13,
                        // color: Colors.black,
                        child: Image.asset("lib/assets/unlem.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Color(0xFF403d39),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      child: Center(
                          child: Text(
                        "Geçmiş Depremler",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.0),
                        child: Container(
                          height: size.height * 0.5,
                          width: size.width * 0.8,
                          color: Color(0xFFfffcf2),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.1,
                            child: Image.asset("lib/assets/maps.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.8,
                      //color: Colors.red,
                      child: Center(
                          child: Text(
                        "Tahmini deprem aralığı:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(size.height * 0.02),
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.8,
                          color: Color(0xffEB5E28),
                        ),
                      ),
                      Container(
                        height: size.height * 0.08,
                        width: size.width * 0.13,
                        // color: Colors.black,
                        child: Image.asset("lib/assets/unlem.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
