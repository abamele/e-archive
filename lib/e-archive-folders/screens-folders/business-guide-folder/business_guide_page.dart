import 'package:earsive/e-archive-folders/constant-folder/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BusinessGuidePage extends StatefulWidget {
  const BusinessGuidePage({Key? key}) : super(key: key);

  @override
  State<BusinessGuidePage> createState() => _BusinessGuidePageState();
}

class _BusinessGuidePageState extends State<BusinessGuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Firma Rehberi")),
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
                    Text("Firma Ekle"),
                  ],
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Builder(builder: (context) {
                            return Center(child: Text("Firma Bilgisi Ekle"));
                          }),
                          content: SingleChildScrollView( 
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    maxLength: 11,
                                    decoration: InputDecoration(
                                        hintText: "Vergi/TC Notu",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "İsim",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Soyisim",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Vergi Dairesi",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    minLines: 4,
                                    maxLines: null,
                                    decoration: InputDecoration(
                                        hintText: "Adres",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Mahalle/Semt/İlçe",
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ExpansionTile(title: Text("Şehir"), subtitle: Text("Seç"),)
                                ),
                                
                                
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: blueColor,
                                      minimumSize: Size(290, 50)
                                    ),
                                      child: Text("Ekle"), onPressed: () {}),
                                )
                              ],
                            ),
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
