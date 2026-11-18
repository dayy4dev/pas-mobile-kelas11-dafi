import 'package:dafi_23/menus/home_page.dart';
import 'package:dafi_23/menus/feat_page.dart';
import 'package:dafi_23/menus/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  
  void changePage(int index) {
    selectedIndex.value = index;
  }
  
  // list of page inside menu
  List<Widget> pages = [HomePage(), FeatPage(), ProfilePage()];
}
