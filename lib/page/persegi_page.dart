import 'package:bangun_datar_rplb29/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Persegi"),),
      body: Column(
        children: <Widget>[
          Image.asset("assets/persegi.png", height: 80,),
          Text("Persegi", style: TextStyle(
              color: Colors.white),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.amberAccent.shade200,
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat "
                    "buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut "
                    "siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya "
                    "sama panjang dan keempat sudutnya siku-siku."),
            ),
          Container(
            decoration: BoxDecoration(
                color: Colors.amber.shade200,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
               children: [
                 Container(
                   margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                   child: TextFormField(
                     onChanged: (value){
                       _persegiController.sisi = int.parse(value);
                     },
                     decoration: InputDecoration(
                         fillColor: Colors.white,
                         filled: true,
                         labelText: "Sisi",
                         hintText: "Masukkan Sisi",
                         hintStyle: TextStyle(color: Colors.grey.shade400),
                         contentPadding: EdgeInsets.symmetric(
                             vertical: 4, horizontal: 8),
                         border: OutlineInputBorder(
                             borderSide: BorderSide(width: 1, color: Colors.grey),
                             borderRadius: BorderRadius.all(Radius.circular(10))),
                         enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(width: 1, color: Colors.grey),
                             borderRadius: BorderRadius.all(Radius.circular(10))),
                         focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(width: 1, color: Colors.blue),
                             borderRadius: BorderRadius.all(Radius.circular(10)))),
                   ),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton(onPressed: () {
                         _persegiController.hitungluas();
                       }, child: Text("Hitung Luas")),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton(onPressed: () {
                         _persegiController.hitungKeliling();
                       }, child: Text("Hitung Keliling")),
                     ),
                   ],
                 ),

               ],
          )
      ),
          Container(
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: Colors.amber.shade200,
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Obx(() => Text(_persegiController.hasil.value,)),
          ),

    ])
    );
  }
}
