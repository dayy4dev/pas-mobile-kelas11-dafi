import 'package:dafi_23/models/list_makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  // buat data datanya
  RxList<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial",
      hargaMakanan: 25000,
      gambarMakanan: "https://akcdn.detik.net.id/community/media/visual/2022/11/25/resep-nasi-goreng-seafood_43.jpeg?w=700&q=90",
      deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.",
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      hargaMakanan: 30000,
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PvAPlM3nPBwwSjhoxoNo4RTPUaj2PL0mKHDTPsLlR_axPapnK6Vhn5k&s=10",
      deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      hargaMakanan: 28000,
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EoVEfuiC0popmi5kR5T9Daci2eHROQcRvFjdUMkl-eHRnB7y0Nf9U8Q&s=10",
      deskripsi: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      hargaMakanan: 20000,
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSOLE9IW03WA6xBO1509rO-i3Gg5dP-kmSSy6UfHZj9Q&s=10",
      deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      hargaMakanan: 8000,
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq7Cp8lCtd1QRMgFAhdBq9gk14yPUhoa9A9Kmc2ZqYzA&s=10",
      deskripsi: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
    ),
  ].obs;
}
