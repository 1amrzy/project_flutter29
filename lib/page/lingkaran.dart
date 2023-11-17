import 'package:bangun_datar_rplb29/controller/lingkaran_controller.dart';
import 'package:bangun_datar_rplb29/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Lingkaran"),),
        body: Column(
            children: <Widget>[
              Image.asset("assets/lingkaran.png", height: 80,),
              Text("Lingkaran", style: TextStyle(
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
                    "Lingkaran adalah bentuk yang terdiri dari semua titik dalam"
                        " bidang yang berjarak tertentu dari titik tertentu, pusat;"
                        " ekuivalennya adalah kurva yang dilacak oleh titik yang"
                        " bergerak dalam bidang sehingga jaraknya dari titik tertentu "
                        " adalah konstan."),
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
                            _lingkaranController.jari = int.parse(value);
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Jari - Jari",
                              hintText: "Masukkan Jari - Jari",
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
                              _lingkaranController.hitungluas();
                            }, child: Text("Hitung Luas")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: () {
                              _lingkaranController.hitungKeliling();
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
                child: Obx(() => Text(_lingkaranController.hasil.value,)),
              ),

            ])
    );
  }
}
