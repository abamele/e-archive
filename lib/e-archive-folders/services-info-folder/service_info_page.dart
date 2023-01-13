import 'package:earsive/e-archive-folders/constant-folder/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ServiceInfoPage extends StatefulWidget {
  const ServiceInfoPage({Key? key}) : super(key: key);

  @override
  State<ServiceInfoPage> createState() => _ServiceInfoPageState();
}

class _ServiceInfoPageState extends State<ServiceInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Mal/Hizmet Bilgileri")),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: blueColor, minimumSize: Size(290, 50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.save),
                    ),
                    Text("Ürün Ekle"),
                  ],
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Builder(builder: (context) {
                            return Center(child: Text("Ürün Ekle"));
                          }),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Mal/Hizmet Adı",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Birim Fiyat",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ExpansionTile(
                                      title: Text("Birim"),
                                      subtitle: Text("Adet"))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Miktar/Adet",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ExpansionTile(
                                      title: Text("KDV Oranı"),
                                      subtitle: Text("%18 KDV"))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: blueColor,
                                        minimumSize: Size(290, 50)),
                                    child: Text("Ekle"),
                                    onPressed: () {}),
                              )
                            ],
                          ),
                        );
                      });
                }),
          )
        ],
      ),
    );
  }
}
