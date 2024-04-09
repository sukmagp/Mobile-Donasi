import 'package:dana_abadi_app/src/model/common/custom_textfield_login.dart';
import 'package:dana_abadi_app/src/model/common/custom_textfield_password.dart';
import 'package:dana_abadi_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/color_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/font_manager.dart';
import 'package:dana_abadi_app/src/theme_manager/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF010708),
                Color(0xFF005E6A),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0.0, -64.0, 0.0),
            width: double.infinity,
            height: 540.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(1000),
                bottomRight: Radius.circular(1000),
              ),
              gradient: LinearGradient(colors: [
                Color(0xFF010708),
                Color.fromARGB(255, 0, 69, 78),
                // Color(0xFF005E6A),
                // Color(0xFF14474D),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p18, vertical: AppPadding.p32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(
                      Iconsax.arrow_left_2,
                      color: ColorManager.tertiary,
                    ),
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/second-hero-screen')},
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p32, vertical: AppPadding.p32),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat Datang!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeightManager.semibold,
                            fontSize: FontSizeManager.f28,
                            color: Colors.white),
                      ),
                      Text(
                        "Masuk ke akun anda yang telah terdaftar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeightManager.light,
                            fontSize: FontSizeManager.f14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextFieldLogin(
                        labelName: 'Email',
                        hintext: 'Masukan Email',
                        controller: emailController,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextFieldPassword(
                        labelName: 'Password',
                        hintext: 'Masukan Password',
                        controller: passwordController,
                        isObscure: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p32, vertical: AppPadding.p32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Masuk",
                        style: TextStyle(
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSizeManager.f16,
                            color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/dashboard-screen');
                        },
                        child: Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                '${AssetImageIconManager.assetPath}/arrow_button_circle.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p32, vertical: AppPadding.p32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/register-screen');
                        },
                        child: Container(
                          child: const Text(
                            "Daftar",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeightManager.light,
                                fontSize: FontSizeManager.f14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Container(
                          child: const Text(
                            "Lupa Password",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeightManager.light,
                                fontSize: FontSizeManager.f14,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // body: Container(
      //   width: double.infinity,
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(colors: [
      //       Color(0xFF010708),
      //       Color(0xFF005E6A),
      //     ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      //   ),
      //   child: Column(
      //     children: [
      //       Container(
      //         transform: Matrix4.translationValues(0.0, -64.0, 0.0),
      //         width: double.infinity,
      //         height: 540.0,
      //         decoration: const BoxDecoration(
      //           borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(1000),
      //             bottomRight: Radius.circular(1000),
      //           ),
      //           gradient: LinearGradient(colors: [
      //             Color(0xFF010708),
      //             Color.fromARGB(255, 0, 69, 78),
      //             // Color(0xFF005E6A),
      //             // Color(0xFF14474D),
      //           ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      //         ),
      //         child: Container(
      //           padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
      //           transform: Matrix4.translationValues(0.0, -140.0, 0.0),
      //           alignment: Alignment.centerLeft,
      //           child: IconButton(
      //             icon: Icon(
      //               Iconsax.arrow_left_2,
      //               color: ColorManager.tertiary,
      //             ),
      //             onPressed: () => Navigator.of(context).pop(),
      //           ),
      //         ),
      //       ),
      // Container(
      //   transform: Matrix4.translationValues(0.0, -430.0, 0.0),
      //   child: const Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //     Text(
      //     "Selamat Datang!",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //         fontWeight: FontWeightManager.semibold,
      //         fontSize: FontSizeManager.f18,
      //         color: Colors.white),
      //   ),
      //     Text(
      //     "Masuk ke akun anda yang telah terdaftar",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //         fontWeight: FontWeightManager.light,
      //         fontSize: FontSizeManager.f14,
      //         color: Colors.white),
      //   ),
      //     ],
      //   ),
      // )
      //     ],
      //   ),
      // ),
    );
  }
}
