import 'package:earsive/e-archive-folders/constant-folder/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DemandRefused extends StatefulWidget {
  const DemandRefused({Key? key}) : super(key: key);

  @override
  State<DemandRefused> createState() => _DemandRefusedState();
}

class _DemandRefusedState extends State<DemandRefused> {
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
        title: Center(child: Text("İptal/İtiraz Talepler")),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: blueColor, minimumSize: Size(200, 50)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.save),
                      ),
                      Text("Talep Kabul Et"),
                    ],
                  ),
                  onPressed: () {
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Talebi Kabul Et"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Bu talebi kabul etmek istediğinize emin misin?"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(child: Text("Vazgeç"),onPressed: (){Navigator.pop(context);}),
                                TextButton(child: Text("Onayla"),onPressed: (){}),
                              ],
                            )
                          ],
                        ),
                      );
                    });
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: blueColor, minimumSize: Size(200, 50)),
                  child: Row(
                    children: [
                      Icon(Icons.save),
                      Text("Talep Reddet"),
                    ],
                  ),
                  onPressed: () {
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Talebi Reddet"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(

                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(child: Text("Vazgeç"),onPressed: (){Navigator.pop(context);}),
                                TextButton(child: Text("Onayla"),onPressed: (){}),
                              ],
                            )
                          ],
                        ),
                      );
                    });
                  }),
            ],
          )
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
