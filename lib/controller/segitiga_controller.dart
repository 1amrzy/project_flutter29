import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas =0;
  int tinggi =0;
  int sisib =0;
  int sisic =0;
  final hasil = "".obs;


  void hitungluas(){
    double hitung = alas*tinggi /2;
    hasil.value = "Hasil Perhitungan Luas dari 1/2 x $alas x $tinggi adalah $hitung";
  }

  void hitungKeliling(){
    int hitungkel = alas + sisib + sisic ;
    hasil.value = "Hasil Perhitungan keliling dari $alas + $sisib + $sisic adalah $hitungkel";
  }
}