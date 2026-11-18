import 'package:flutter/material.dart';
import 'package:dafi_23/controllers/main_menu_controller.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final menuDrawerController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: Text("PAS Mobile")),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                selected: menuDrawerController.selectedIndex.value == 0,
                onTap: () {
                  menuDrawerController.changePage(0);
                  Get.back();
                },
              ),
              ListTile(
                title: Text('Feat'),
                leading: Icon(Icons.sports_soccer),
                selected: menuDrawerController.selectedIndex.value == 1,
                onTap: () {
                  menuDrawerController.changePage(1);
                  Get.back();
                },
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                selected: menuDrawerController.selectedIndex.value == 2,
                onTap: () {
                  menuDrawerController.changePage(2);
                  Get.back();
                },
              ),
            ],
          ),
        ),
        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.pages,
        ),
      ),
    );
  }
}
