import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;

  void hitungluas(){
    int hitung = sisi*sisi;
    hasil.value = "Hasil Perhitungan Luas dari $sisi x $sisi adalah $hitung";
  }

  void hitungKeliling(){
    int hitungkel = 4*sisi;
    hasil.value = "Hasil Perhitungan keliling dari $sisi x $sisi adalah $hitungkel";
  }
}