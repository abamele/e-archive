import 'package:earsive/e-archive-folders/constant-folder/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddInvoice extends StatefulWidget {
  const AddInvoice({Key? key}) : super(key: key);

  @override
  State<AddInvoice> createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        elevation: 0.0,
        title: Center(child: Text("Yeni Fatura Oluşur")),
      ),
      body: ListView(
        children: [
          Container(
            color: blueColor,
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "TC/Vergi numarasını yazdıktan sonra Noterler Birliğinden sorgulamak için arama butonuna basınız ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ExpansionTile(
            title: Text("Rehberden firma seç", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Düzenlemek için tıklayınız", style: TextStyle(color: Colors.grey)),
            children: [Text("Doldurulacak Alan")],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: SizedBox(
                  height: 50,
                  width: 240,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'TC/Vergi No', border: OutlineInputBorder()),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: blueColor,
                      minimumSize: Size(110, 50)
                    ),
                    child: Center(child: Text("Ara")),
                    onPressed: () {},
                  )),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Vergi Dairesi', border: OutlineInputBorder()),
            ),
          ),
          ExpansionTile(
            title: Text("Şehir", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Şehir için tıklayınız"),
            children: [Text("Doldurulacak Alan")],
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Mahalle/Semt/İlçe', border: OutlineInputBorder()),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Fatura Adresi', border: OutlineInputBorder()),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Ünvan', border: OutlineInputBorder()),
            ),
          ),
          Container(
            child: Row(
              children: [
                Checkbox(value: isChecked, onChanged: (val){
                  setState(() {
                    isChecked=val!;
                  });
                }),
                Text("Ünvan, Vergi/TC No ve Adres Bilgileri")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: blueColor,
                    minimumSize: Size(290, 45)
                  ),
              child: Text("Kaydet ve Devam Et"),
              onPressed: () {},
            )),
          )
        ],
      ),
    );
  }
}
