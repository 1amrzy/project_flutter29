import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang =0;
  int lebar =0;
  final hasil = "".obs;


  void hitungluas(){
    int hitung = panjang*lebar;
    hasil.value = "Hasil Perhitungan Luas dari $panjang x $lebar adalah $hitung";
  }

  void hitungKeliling(){
    int hitungkel = (2*panjang)+(2*lebar);
    hasil.value = "Hasil Perhitungan keliling dari (2 x $panjang)+(2 x $lebar) adalah $hitungkel";
  }
}