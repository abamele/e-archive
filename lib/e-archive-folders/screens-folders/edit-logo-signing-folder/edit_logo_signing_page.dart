import 'package:earsive/e-archive-folders/constant-folder/colors.dart';
import 'package:flutter/material.dart';

class EditLogoOrSigningPage extends StatefulWidget {
  const EditLogoOrSigningPage({Key? key}) : super(key: key);

  @override
  State<EditLogoOrSigningPage> createState() => _EditLogoOrSigningPageState();
}

class _EditLogoOrSigningPageState extends State<EditLogoOrSigningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: blueColor,
        title: Center(
          child: Text("Fatura Logo ve İmza Düzenle"),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/c_805646-l_1-k_image.jpg",),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height:30),
          Center(child: Text("Kurumsal Logo", style: TextStyle(fontWeight: FontWeight.bold, color: blueColor),),),
          Container(
            height: 150,
            margin: EdgeInsets.only(left: 40, right: 40,),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color:  Colors.black,//<---- Insert Gradient Here
                  width: 1.5,
                )
            ),
            child: Center(
              child: Text("Kurumsal Logunuz Bulunamadı"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(primary: blueColor,minimumSize: Size(170, 45)),onPressed: (){}, child: Center(child: Icon(Icons.camera_alt_outlined))),
              ElevatedButton(style: ElevatedButton.styleFrom(primary: blueColor,minimumSize: Size(170, 45)),onPressed: (){}, child: Center(child: Icon(Icons.check)))
            ],
          ),
          SizedBox(height: 30,),
          Center(child: Text("Kurumsal İmza", style: TextStyle(fontWeight: FontWeight.bold, color: blueColor),),),
          Container(
            height: 150,
            margin: EdgeInsets.only(left: 40, right: 40,),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color:  Colors.black,//<---- Insert Gradient Here
                  width: 1.5,
                )
            ),
            child: Center(
              child: Text("Kurumsal İmzanız Bulunamadı"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(primary: blueColor,minimumSize: Size(170, 45)),onPressed: (){}, child: Center(child: Icon(Icons.camera_alt_outlined))),
              ElevatedButton(style: ElevatedButton.styleFrom(primary: blueColor,minimumSize: Size(170, 45)),onPressed: (){}, child: Center(child: Icon(Icons.check)))
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red,minimumSize: Size(170, 45)),onPressed: (){}, child: Center(child: Text("Kurumsal Logo ve İmza Sil"))),
          )
        ]
      ),
    );
  }
}
