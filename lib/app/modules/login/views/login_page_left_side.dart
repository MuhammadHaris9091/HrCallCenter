import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_call_center_bpo/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginPageLeftSide extends GetView<LoginController>  {
  const LoginPageLeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(120.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
                const SizedBox(height: 12,),
                const Text("The safest site on the web for storing your data!", style: TextStyle(fontSize: 12),),
                const SizedBox(height: 24),
                const TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "Please write your email address",
                      hintStyle: TextStyle(fontSize: 12)
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                      label: Text("Password"),
                      hintText: "Please write your password",
                      hintStyle: TextStyle(fontSize: 12)
                  ),
                ),
                const SizedBox(height: 24),

                Align(
                  alignment: Alignment.topRight,
                  child: MaterialButton(child: const Text("Forget password?"), onPressed: (){},),
                ),
                const SizedBox(height: 24),

                MaterialButton(onPressed: (){
                  Get.offAndToNamed(Routes.HOME);

                  },child: const Text("Login"),
                  minWidth: double.infinity,
                  height: 52,
                  elevation: 24,
                  color: Colors.blue.shade700,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)
                  ),
                ),
                const SizedBox(height: 24),

                MaterialButton(onPressed: (){},
                  child: const Text("Create Account"),
                  minWidth: double.infinity,
                  height: 52,
                  elevation: 24,
                  color: Colors.blue.shade700,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)
                  ),
                )
              ],
            ),
          ),
        ));
  }
}