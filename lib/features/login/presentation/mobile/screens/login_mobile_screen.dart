import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jaropella/core/component/assets_manager.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: Get.height / 1.5,
            child: Image.asset(
                AssetsManager.model,
            fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
