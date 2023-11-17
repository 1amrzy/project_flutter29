import 'package:bangun_datar_rplb29/controller/persegi_controller.dart';
import 'package:bangun_datar_rplb29/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);
  final PersegiPanjangController _persegipanjangcontroller = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Persegi"),),
        body: Column(
            children: <Widget>[
              Image.asset("assets/persegipanjang.png", height: 80,),
              Text("Persegi Panjang", style: TextStyle(
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
                    "Persegi panjang adalah bangun datar dua dimensi yang "
                        "dibentuk oleh dua pasang sisi yang masing-masing "
                        "sama panjang dan sejajar dengan pasangannya, dan "
                        "memiliki empat buah sudut yang kesemuanya adalah "
                        "sudut siku-siku."),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.amber.shade200,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      customform(
                        label: "Panjang",
                        hintText: "Masukan Panjang",
                        onChanged: (value) => _persegipanjangcontroller.panjang=int.parse(value),
                      ),
                      customform(
                        label: "Lebar",
                        hintText: "Masukan Lebar",
                        onChanged: (value) => _persegipanjangcontroller.lebar=int.parse(value),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: () {
                              _persegipanjangcontroller.hitungluas();
                            }, child: Text("Hitung Luas")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: () {
                              _persegipanjangcontroller.hitungKeliling();
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
                child: Obx(() => Text(_persegipanjangcontroller.hasil.value,)),
              ),

            ])
    );
  }
}

class customform extends StatelessWidget {
  const customform({
    super.key,
     required this.label, required this.hintText, required this.onChanged,
  });

  final String label;
  final String hintText;
  final Function(String value) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            labelText: label,
            hintText: hintText,
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

    );
  }
}
