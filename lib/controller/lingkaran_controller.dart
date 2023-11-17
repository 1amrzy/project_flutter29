import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int jari =0;
  final hasil = "".obs;


  void hitungluas(){
    double hitung = 3.14 * jari * jari;
    hasil.value = "Hasil Perhitungan Luas dari 3,14 x $jari x $jari adalah $hitung";
  }

  void hitungKeliling(){
    double hitungkel = 2*3.14*jari ;
    hasil.value = "Hasil Perhitungan keliling dari 2 x 3,14 x $jari adalah $hitungkel";
  }
}