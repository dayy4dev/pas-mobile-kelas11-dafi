import 'package:dafi_23/pages/transaksi_makanan_page.dart';
import 'package:dafi_23/pages/login_page.dart';
import 'package:get/get.dart';
import 'package:dafi_23/pages/main_menu_page.dart';

class Routes {

  static const String mainMenu = "/main_menu";
  static const String login = "/login";
  static const String detailMakanan = "/detail_makanan";

  static final myPages=[

    GetPage(name: mainMenu, page: ()=> MainMenuPage()),
    GetPage(name: login, page: ()=> LoginPage()),
    GetPage(name: detailMakanan, page: ()=> DetailmakananPage())

  ];
}