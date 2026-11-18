import 'package:dafi_23/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../components/custom_textfield_login.dart';
import '../components/custom_button_login.dart';

Color _bgColor = Color.fromARGB(255, 255, 255, 255);

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                  color: const Color.fromARGB(255, 17, 17, 17),
                  fontSize: 26,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 4,
                ),
              ),
              SizedBox(height: 32),

              CustomTextFieldLogin(
                controller: controller.txtUsername,
                label: 'Username',
                hintText: 'Input your username',
              ),
              SizedBox(height: 16),

              CustomTextFieldLogin(
                controller: controller.txtPassword,
                label: 'Password',
                hintText: 'Input your password',
                obscureText: true,
              ),
              SizedBox(height: 24),

              Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : CustomButtonLogin(
                        text: 'Sign In',
                        onPressed: () {
                          controller.login();
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
