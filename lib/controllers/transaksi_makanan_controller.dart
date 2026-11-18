import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late double hargaMakanan;
  late String gambarMakanan;
  late String deskripsi;

  final RxInt jumlah = 1.obs;
  
  @override
  void onInit() {
    super.onInit();
    final argument = Get.arguments;
    namaMakanan = argument['namaMakanan'];
    hargaMakanan = argument['hargaMakanan'];
    gambarMakanan = argument['gambarMakanan'];
    deskripsi = argument['deskripsi'];
  }

  void tambah() {
      jumlah.value++;
  }

  void kurangi() {
    if (jumlah.value > 1) {
      jumlah.value--;
    }
  }

  double get subtotal => hargaMakanan * jumlah.value;

  double get ppn => subtotal * 0.05;

  double get total => subtotal + ppn;

}