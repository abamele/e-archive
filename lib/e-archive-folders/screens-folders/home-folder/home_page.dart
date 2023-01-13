import 'package:earsive/e-archive-folders/constant-folder/colors.dart';
import 'package:earsive/e-archive-folders/constant-folder/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Hattat E-arşiv Portal")),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          InkWell(
                            child: Card(
                              elevation: 5.0,
                              color: Colors.white,
                              margin: EdgeInsets.only(top: 30),
                              child: Container(
                                width: context.dynamicWidth(0.40),
                                height: context.dynamicHeight(0.15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 25,
                                        color: blueColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Yeni Fatura Ouşur",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff4F4F4F))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, "/add-bill");
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          InkWell(
                            child: Card(
                              elevation: 5.0,
                              color: Colors.white,
                              margin: EdgeInsets.only(top: 30),
                              child: Container(
                                width: context.dynamicWidth(0.40),
                                height: context.dynamicHeight(0.15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.home,
                                        size: 25,
                                        color: blueColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("E-Arşiv Faturalar",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff4F4F4F))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, "/e-archive-bill");
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                            elevation: 5.0,
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 30),
                            child: Container(
                              width: context.dynamicWidth(0.40),
                              height: context.dynamicHeight(0.15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.home,
                                      size: 25,
                                      color: blueColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Size Kesilen Faturalar",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4F4F4F))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                            elevation: 5.0,
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 30),
                            child: Container(
                              width: context.dynamicWidth(0.40),
                              height: context.dynamicHeight(0.15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.home,
                                      size: 25,
                                      color: blueColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("İptal/İtiraz Faturalar",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4F4F4F))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                            elevation: 5.0,
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 30),
                            child: Container(
                              width: context.dynamicWidth(0.40),
                              height: context.dynamicHeight(0.15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.home,
                                      size: 25,
                                      color: blueColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Mal/Hizmet Bilgileri",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4F4F4F))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                            elevation: 5.0,
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 30),
                            child: Container(
                              width: context.dynamicWidth(0.40),
                              height: context.dynamicHeight(0.15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.home,
                                      size: 25,
                                      color: blueColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Not/IBAN Bilgileri",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4F4F4F))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                            elevation: 5.0,
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 30),
                            child: Container(
                              width: context.dynamicWidth(0.40),
                              height: context.dynamicHeight(0.15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.home,
                                      size: 25,
                                      color: blueColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Karşi Firma Bilgileri",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4F4F4F))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                            elevation: 5.0,
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 30),
                            child: Container(
                              width: context.dynamicWidth(0.40),
                              height: context.dynamicHeight(0.15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.home,
                                      size: 25,
                                      color: blueColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Fatura Logo ve İmza Düzenle",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4F4F4F))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0612500, size.height * 0.0060000);
    path0.lineTo(size.width * 0.0612500, size.height * 0.8020000);
    path0.quadraticBezierTo(size.width * 0.1118750, size.height * 0.6990000,
        size.width * 0.1237500, size.height * 0.6940000);
    path0.quadraticBezierTo(size.width * 0.2100000, size.height * 0.5905000,
        size.width * 0.5025000, size.height * 0.5640000);
    path0.quadraticBezierTo(size.width * 0.7821875, size.height * 0.5875000,
        size.width * 0.8750000, size.height * 0.6980000);
    path0.quadraticBezierTo(size.width * 0.8903125, size.height * 0.7225000,
        size.width * 0.9362500, size.height * 0.7960000);
    path0.lineTo(size.width * 0.9362500, size.height * 0.0060000);
    path0.lineTo(size.width * 0.0612500, size.height * 0.0060000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
