import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  const CustomAppbar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(title),
        foregroundColor: const Color.fromARGB(255, 212, 204, 204),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 71, 71, 71),
        bottom: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Container(height: 1, color: Color(0xFF2D3748)),
      ),
      );
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(65);
  }
}