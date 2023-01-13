import 'package:earsive/e-archive-folders/constant-folder/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EArchiveInvoice extends StatefulWidget {
  const EArchiveInvoice({Key? key}) : super(key: key);

  @override
  State<EArchiveInvoice> createState() => _EArchiveInvoiceState();
}

class _EArchiveInvoiceState extends State<EArchiveInvoice> {
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
        title: Center(
          child: Text("E-Arşiv Faturalar"),
        ),
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
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: ExpansionTile(
                      title: Text(
                        "RAMAZAN AÇIKGÖZ",
                        style: TextStyle(
                            color: blueColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("onaylanmış"), Text("2022-08-05")]),
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 130.98,
                                    color: Colors.red,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                            ),
                                            Text("İptal",
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width: 130.98,
                                    color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.check_box_rounded,
                                              color: Colors.white,
                                            ),
                                            Text("İmzala",
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width: 130.98,
                                    color: blueColor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.visibility,
                                              color: Colors.white,
                                            ),
                                            Text("Göster",
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 98.2,
                                    color: Colors.grey,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.edit_location_alt,
                                              color: Colors.white,
                                            ),
                                            Text("Düzenle",
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width: 98.2,
                                    color: Color(0xffffbf00),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.share,
                                              color: Colors.white,
                                            ),
                                            Text("Paylaş",
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width: 98.2,
                                    color: blueColor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.download,
                                              color: Colors.white,
                                            ),
                                            Text("İndir",
                                                style: TextStyle(
                                                    color: Colors.white))
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width: 98.2,
                                    color: Colors.red,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "Sil",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
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
