import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constant-folder/colors.dart';

class InvoiceIssued extends StatefulWidget {
  const InvoiceIssued({Key? key}) : super(key: key);

  @override
  State<InvoiceIssued> createState() => _InvoiceIssuedState();
}

class _InvoiceIssuedState extends State<InvoiceIssued> {
  TextEditingController startedDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  DateTime? dateTime1;
  DateTime? dateTime2;
  String? strDate;
  String? enddte;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Size Kesilen Faturalar")),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text("Başlangiç Tarihi"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: SizedBox(
                      height: 50,
                      width: 170,
                      child: TextFormField(
                        controller: startedDate,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_month),
                          hintText: 'Seçiniz...',
                          helperStyle:
                          TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        onTap: () async {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          await _openDatePicker1(context);
                          startedDate.text =
                              DateFormat('dd/MM/yyyy').format(dateTime1!);
                        },
                        onSaved: (val) {
                          strDate = val;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text("Bitiş Tarihi"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: SizedBox(
                      height: 50,
                      width: 170,
                      child: TextFormField(
                        //controller: taskEndDate,
                        decoration: InputDecoration(
                          hintText: 'Seçiniz...',
                          prefixIcon: Icon(Icons.calendar_month),
                          helperStyle:
                          TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        onTap: () async {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          await _openDatePicker2(context);
                          enddte = DateFormat('dd/MM/yyyy').format(dateTime2!);
                        },
                        onSaved: (val) {
                          enddte = val;
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20,),
            child: Card(
              elevation: 8.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    color: blueColor,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: new Text(
                      "",
                      style: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Fatura Ünvanı :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Fatura No:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Fatura Tutarı :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(290, 45),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder:
                          //             (context) =>
                          //                 TaskDetails(
                          //                   taskList:
                          //                       task[index],
                          //                 )));
                        },
                        child: Text(
                          "Detayları",
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openDatePicker1(BuildContext context) async {
    dateTime1 = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2025),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: blueColor, // header background color
                onPrimary: Colors.white, // header text color
                onSurface: blueColor, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: blueColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
  }

  Future<void> _openDatePicker2(BuildContext context) async {
    dateTime2 = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2025),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: blueColor, // header background color
                onPrimary: Colors.white, // header text color
                onSurface: blueColor, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: blueColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
  }
}
