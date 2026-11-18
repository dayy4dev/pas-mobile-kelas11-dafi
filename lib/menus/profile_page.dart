import 'package:dafi_23/components/custom_appbar.dart';
import 'package:dafi_23/components/profile/custom_profile_item.dart';
import 'package:dafi_23/components/profile/custom_profile_photo.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: CustomAppbar(title: "Profile"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(child: CustomProfilePhoto(imageUrl: "https://media1.tenor.com/m/m11vauEEbcUAAAAd/meow-neko-arc.gif")),
            SizedBox(height: 40),
            CustomProfileItem(icon: Icons.person_outline, title: "Name", value: "Muhammad Dafi Ristiansyah"),
            CustomProfileItem(icon: Icons.class_outlined, title: "Kelas / Absen", value: "11 PPLG 1 / 23"),
            CustomProfileItem(icon: Icons.info_outline, title: "Bio", value: "Halo nama saya Dafi dari 11 PPLG"),
          ],
        ),
      ),
    );
  }
}