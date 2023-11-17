import 'package:bangun_datar_rplb29/page/lingkaran.dart';
import 'package:bangun_datar_rplb29/page/persegi_page.dart';
import 'package:bangun_datar_rplb29/page/persegipanjang.dart';
import 'package:bangun_datar_rplb29/page/segitiga.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",
            style: TextStyle(
          color: Colors.white)),
        backgroundColor: Color(0xFF2B2D52),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>PersegiPage()));
                  },
                  child: CustomMenu(imageAsset: "assets/persegi.png",title: "Persegi"))),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>PersegiPanjangPage()));
                  },
                  child: CustomMenu(imageAsset: "assets/persegipanjang.png",title: "Persegi Panjang"))),
            ],
          ),

          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>SegitigaPage()));
                  },
                  child: CustomMenu(imageAsset: "assets/segitiga.png",title: "Segitiga"))),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>LingkaranPage()));
                  },
                  child: CustomMenu(imageAsset: "assets/lingkaran.png",title: "Lingkaran"))),
            ],
          ),

        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,required this.imageAsset, required this.title,
  });
final String imageAsset;
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
      color: Colors.lightBlue,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 80,),
            Text(title,style: TextStyle(
               color: Colors.white),),
              ],
        ));
  }
}
